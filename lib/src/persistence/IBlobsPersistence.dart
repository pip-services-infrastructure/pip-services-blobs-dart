import 'dart:async';
import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_data/pip_services3_data.dart';
import '../data/version1/BlobInfoV1.dart';

abstract class IBlobsPersistence extends IGetter<BlobInfoV1, String> {
  Future<DataPage<BlobInfoV1>> getPageByFilter(
      String correlationId, FilterParams filter, PagingParams paging);
  Future<List<BlobInfoV1>> getListByIds(String correlationId, List<String> ids);
  @override
  Future<BlobInfoV1> getOneById(String correlationId, String id);
  Future<BlobInfoV1> update(String correlationId, BlobInfoV1 item);
  Future markCompleted(String correlationId, List<String> ids);
  Future deleteById(String correlationId, String id);
  Future deleteByIds(String correlationId, List<String> ids);
  bool isUriSupported();
  Future<String> getUri(String correlationId, String id);
  Future<String> beginWrite(String correlationId, BlobInfoV1 item);
  Future<String> writeChunk(String correlationId, String token, String chunk);
  Future<BlobInfoV1> endWrite(String correlationId, String token, String chunk);
  Future abortWrite(String correlationId, String token);
  Future<BlobInfoV1> beginRead(String correlationId, String id);
  Future<String> readChunk(String correlationId, String id, int skip, int take);
  Future endRead(String correlationId, String id);
}
