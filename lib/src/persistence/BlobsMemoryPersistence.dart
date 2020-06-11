import 'dart:async';
import 'dart:typed_data';
import 'dart:convert';

import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_data/pip_services3_data.dart';

import '../data/version1/BlobInfoV1.dart';
import './IBlobsPersistence.dart';

class BlobsMemoryPersistence
    extends IdentifiableMemoryPersistence<BlobInfoV1, String>
    implements IBlobsPersistence {
  var content = <String, Uint8List>{}; // { [index: string]: Buffer } = {};
  int maxBlobSize = 100 * 1024;

  BlobsMemoryPersistence() : super();

  @override
  void configure(ConfigParams config) {
    super.configure(config);
    maxBlobSize =
        config.getAsLongWithDefault('options.max_blob_size', maxBlobSize);
  }

  bool _matchString(String value, String search) {
    if (value == null && search == null) {
      return true;
    }
    if (value == null || search == null) {
      return false;
    }
    return value.toLowerCase().contains(search);
  }

  bool _matchSearch(BlobInfoV1 item, String search) {
    search = search.toLowerCase();
    if (_matchString(item.name, search)) {
      return true;
    }
    if (_matchString(item.group, search)) {
      return true;
    }
    return false;
  }

  dynamic _composeFilter(FilterParams filter) {
    filter = filter ?? FilterParams();
    var search = filter.getAsNullableString('search');
    var id = filter.getAsNullableString('id');
    var name = filter.getAsNullableString('name');
    var group = filter.getAsNullableString('group');
    var completed = filter.getAsNullableBoolean('completed');
    var expired = filter.getAsNullableBoolean('expired');
    var fromCreateTime = filter.getAsNullableDateTime('from_create_time');
    var toCreateTime = filter.getAsNullableDateTime('to_create_time');

    var now = DateTime.now().toUtc();

    return (BlobInfoV1 item) {
      if (search != null && !_matchSearch(item, search)) {
        return false;
      }
      if (id != null && id != item.id) {
        return false;
      }
      if (name != null && name != item.name) {
        return false;
      }
      if (group != null && group != item.group) {
        return false;
      }
      if (completed != null && completed != item.completed) {
        return false;
      }
      if (expired != null &&
          expired == true &&
          item.expire_time.millisecondsSinceEpoch >
              now.millisecondsSinceEpoch) {
        return false;
      }
      if (expired != null &&
          expired == false &&
          item.expire_time.millisecondsSinceEpoch <=
              now.millisecondsSinceEpoch) {
        return false;
      }
      if (fromCreateTime != null &&
          item.create_time.millisecondsSinceEpoch >=
              fromCreateTime.millisecondsSinceEpoch) {
        return false;
      }
      if (toCreateTime != null &&
          item.create_time.millisecondsSinceEpoch <
              toCreateTime.millisecondsSinceEpoch) {
        return false;
      }
      return true;
    };
  }

  @override
  Future<DataPage<BlobInfoV1>> getPageByFilter(
      String correlationId, FilterParams filter, PagingParams paging) {
    return getPageByFilterEx(
        correlationId, _composeFilter(filter), paging, null);
  }

  @override
  Future markCompleted(String correlationId, List<String> ids) async {
    for (var id in ids) {
      var data = AnyValueMap.fromTuples(['completed', true]);
      await updatePartially(correlationId, id, data);
    }
  }

  @override
  Future<BlobInfoV1> deleteById(String correlationId, String id) {
    content.remove(id);
    return deleteById(correlationId, id);
  }

  @override
  Future deleteByIds(String correlationId, List<String> ids) {
    for (var id in ids) {
      content.remove(id);
    }
    return deleteByIds(correlationId, ids);
  }

  @override
  Future clear(String correlationId) {
    content = <String, Uint8List>{};
    return clear(correlationId);
  }

  @override
  bool isUriSupported() {
    return false;
  }

  @override
  Future<String> getUri(String correlationId, String id) async {
    return null;
  }

  @override
  Future<String> beginWrite(String correlationId, BlobInfoV1 item) async {
    if (item.size != null && item.size > maxBlobSize) {
      throw BadRequestException(
              correlationId,
              'BLOB_TOO_LARGE',
              'Blob ' +
                  item.id +
                  ' exceeds allowed maximum size of ' +
                  maxBlobSize.toString())
          .withDetails('blob_id', item.id)
          .withDetails('size', item.size)
          .withDetails('max_size', maxBlobSize);
    }

    item = await create(correlationId, item);
    var buffer = Uint8List(0);
    content[item.id] = buffer;
    return item.id;
  }

  @override
  Future<String> writeChunk(
      String correlationId, String token, String chunk) async {
    var id = token;
    var oldBuffer = content[id];
    if (oldBuffer == null) {
      throw NotFoundException(
              correlationId, 'BLOB_NOT_FOUND', 'Blob ' + id + ' was not found')
          .withDetails('blob_id', id);
    }

    // Enforce maximum size
    var chunkLength = chunk != null ? chunk.length : 0;
    if (maxBlobSize > 0 && oldBuffer.length + chunkLength > maxBlobSize) {
      throw BadRequestException(
              correlationId,
              'BLOB_TOO_LARGE',
              'Blob ' +
                  id +
                  ' exceeds allowed maximum size of ' +
                  maxBlobSize.toString())
          .withDetails('blob_id', id)
          .withDetails('size', oldBuffer.length + chunkLength)
          .withDetails('max_size', maxBlobSize);
    }
    var buffer = Uint8List(0); //Buffer("", "base64");
    if (chunk != null && chunk.isNotEmpty) {
      buffer = Base64Decoder().convert(chunk); //Buffer.from(chunk, 'base64');
    }
    content[id].addAll(buffer); // = Buffer.concat([oldBuffer, buffer]);
    return token;
  }

  @override
  Future<BlobInfoV1> endWrite(
      String correlationId, String token, String chunk) async {
    var id = token;
    BlobInfoV1 item;

    // Write last chunk of the blob
    await writeChunk(correlationId, token, chunk);

    // Get blob info
    var data = await getOneById(correlationId, id);
    if (data == null) {
      throw NotFoundException(
              correlationId, 'BLOB_NOT_FOUND', 'Blob ' + id + ' was not found')
          .withDetails('blob_id', id);
    }
    item = data;

    // Update blob info with size and create time
    var buffer = content[id];
    item.create_time = DateTime.now().toUtc();
    item.size = buffer != null ? buffer.length : 0;
    await update(correlationId, item);
    return item;
  }

  @override
  Future abortWrite(String correlationId, String token) {
    var id = token;
    return deleteById(correlationId, id);
  }

  @override
  Future<BlobInfoV1> beginRead(String correlationId, String id) {
    var oldBuffer = content[id];
    if (oldBuffer == null) {
      throw NotFoundException(
              correlationId, 'BLOB_NOT_FOUND', 'Blob ' + id + ' was not found')
          .withDetails('blob_id', id);
    }

    return getOneById(correlationId, id);
  }

  @override
  Future<String> readChunk(
      String correlationId, String id, int skip, int take) async {
    var oldBuffer = content[id];
    if (oldBuffer == null) {
      var err = NotFoundException(
              correlationId, 'BLOB_NOT_FOUND', 'Blob ' + id + ' was not found')
          .withDetails('blob_id', id);
      throw err;
    }

    var result = Base64Encoder().convert(oldBuffer.sublist(skip, skip + take));
    return result;
  }

  @override
  Future endRead(String correlationId, String id) async {
    return null;
  }
}
