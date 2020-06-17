import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_data/pip_services3_data.dart';
import './BlobsMemoryPersistence.dart';
import '../data/version1/BlobInfoV1.dart';
import './TempBlobStorage.dart';

class BlobsFilePersistence extends BlobsMemoryPersistence {
  JsonFilePersister<BlobInfoV1> persister;
  var path = './data/blobs';
  var index = './data/blobs/index.json';
  @override
  int maxBlobSize = 100 * 1024;
  TempBlobStorage storage;

  BlobsFilePersistence([String path, String index]) : super() {
    this.path = path ?? this.path;
    this.index = index ?? this.path + '/index.json';

    storage = TempBlobStorage(this.path);
    persister = JsonFilePersister<BlobInfoV1>(this.index);
    loader = persister;
    saver = persister;
  }

  @override
  void configure(ConfigParams config) {
    config = ConfigParams(config);
    storage.configure(config);

    path = config.getAsStringWithDefault('path', path);
    index = config.getAsStringWithDefault('index', path + '/index.json');
    maxBlobSize =
        config.getAsLongWithDefault('options.max_blob_size', maxBlobSize);

    // Override and set configuration
    config.setAsObject('path', index);
    super.configure(config);
    persister.configure(config);
  }

  @override
  Future open(String correlationId) async {
    // Open temp blob storage
    await storage.open(correlationId);

    // Create folder if it doesn't exist
    var pathDir = Directory(path);
    if (!pathDir.existsSync()) {
      pathDir.createSync(recursive: true);
    }

    // Close index
    await open(correlationId);
  }

  @override
  Future close(String correlationId) async {
    // Close temp blob storage
    await storage.close(correlationId);
    // Close index
    await super.close(correlationId);
  }

  String makeFileName(String id) {
    return path + '/' + id + '.dat';
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
  Future<String> beginWrite(String correlationId, BlobInfoV1 item) {
    return super.beginWrite(correlationId, item);
  }

  @override
  Future<String> writeChunk(
      String correlationId, String token, String chunk) async {
    var id = token;
    chunk = chunk ?? '';
    var buffer = Base64Decoder().convert(chunk); //Buffer.from(chunk, 'base64');
    await storage.appendChunk(correlationId, id, buffer);
    return token;
  }

  // public endWrite(String correlationId, token: string, chunk: string,
  //     callback?: (err: any, item: BlobInfoV1) => void): void {
  //     let id = token;
  //     chunk = chunk || "";
  //     let buffer = Buffer.from(chunk, 'base64');
  //     let size = buffer.length;
  //     let append = false;
  //     let item: BlobInfoV1;

  //     async.series([
  //         // Get blob info
  //         (callback) => {
  //             super.getOneById(correlationId, id, (err, data) => {
  //                 if (err == null && data == null) {
  //                     err = new NotFoundException(
  //                         correlationId,
  //                         'BLOB_NOT_FOUND',
  //                         'Blob ' + id + ' was not found'
  //                     ).withDetails('blob_id', id);
  //                 }
  //                 item = data;
  //                 callback(err);
  //             });
  //         },
  //         // Read current size and decide to append or to write from scratch
  //         (callback) => {
  //             this.storage.getChunksSize(correlationId, id, (err, writtenSize) => {
  //                 append = writtenSize > 0;
  //                 size += writtenSize;
  //                 callback();
  //             });
  //         },
  //         // Append existing file and rename
  //         (callback) => {
  //             if (!append) {
  //                 callback();
  //                 return;
  //             }

  //             // If some chunks already stored in temp file - append then upload the entire file
  //             this.storage.appendChunk(correlationId, id, buffer, (err, chunks) => {
  //                 if (err != null) {
  //                     if (callback) callback(err);
  //                     return;
  //                 }

  //                 let oldPath = this.storage.makeFileName(id);
  //                 let newPath = this.makeFileName(id);
  //                 fs.rename(oldPath, newPath, (err) => {
  //                     callback(err);
  //                 });
  //             });
  //         },
  //         // Write blob from scratch
  //         (callback) => {
  //             if (append) {
  //                 callback();
  //                 return;
  //             }

  //             // If it's the first chunk then upload it without writing to temp file
  //             fs.writeFile(this.makeFileName(id), buffer, callback);
  //         },
  //         // Update blob info with size and create time
  //         (callback) => {
  //             let buffer = this._content[id];
  //             item.create_time = new Date();
  //             item.size = size;

  //             super.update(correlationId, item, callback);
  //         }
  //     ], (err) => {
  //         if (err) callback(err, null);
  //         else callback(null, item);
  //     });
  // }

  @override
  Future abortWrite(String correlationId, String token) async {
    var id = token;
    await super.deleteById(correlationId, id);
    await storage.deleteChunks(correlationId, id);
  }

  @override
  Future<BlobInfoV1> beginRead(String correlationId, String id) {
    var filePath = makeFileName(id);

    if (!Directory(filePath).existsSync()) {
      throw NotFoundException(
              correlationId, 'BLOB_NOT_FOUND', 'Blob ' + id + ' was not found')
          .withDetails('blob_id', id)
          .withDetails('path', filePath);
    }

    return super.getOneById(correlationId, id);
  }

  Future<String> readChunk(String correlationId, String id, int skip, int take) async {

      fs.open(makeFileName(id), 'r', (err, fd) => {
          ValidationResultType buffer = Buffer(take);
          if (err == null) {
              fs.read(fd, buffer, 0, take, skip, (err) => {
                  if (err == null) {
                      fs.close(fd, (err) => {
                          var result = buffer.toString('base64');
                          callback(err, result);
                      });
                  } else callback(err, null);
              });
          } else callback(err, null);
      });
  }

  @override
  Future endRead(String correlationId, String id) async{
     return null;
  }

  // public deleteById(String correlationId, id: string,
  //     callback?: (err: any, item: BlobInfoV1) => void): void {

  //     super.deleteById(correlationId, id, (err, item) => {
  //         fs.unlink(this.makeFileName(id), (err) => {
  //             if (err == null) {
  //                 super.deleteById(correlationId, id, (err) => {
  //                     if (err && err.code == 'ENOENT') err = null;
  //                     if (callback) callback(err, item);
  //                 });
  //             } else if (callback) callback(err, null);
  //         });
  //     });
  // }

  // public deleteByIds(String correlationId, ids: string[], callback?: (err: any) => void): void {
  //     super.deleteByIds(correlationId, ids, (err) => {
  //         if (err == null) {
  //             async.each(ids, (id, callback) => {
  //                 fs.unlink(this.makeFileName(id), (err) => {
  //                     if (err && err.code == 'ENOENT') err = null;
  //                     if (callback) callback(err);
  //                 });
  //             }, callback);
  //         } else if (callback) callback(err);
  //     });
  // }

  // public clear(String correlationId, callback?: (err: any) => void): void {
  //     super.clear(correlationId, (err) => {
  //         if (err == null) {
  //             fs.readdir(this.path, (err, files) => {
  //                 if (err == null) {
  //                     files = _.filter(files, (file) => file.endsWith('.dat'));
  //                     async.each(files, (file, callback) => {
  //                         fs.unlink(this.path + '/' + file, callback);
  //                     }, callback);
  //                 } else callback(err);
  //             });
  //         } else if (callback) callback(err);
  //     });
  // }
}
