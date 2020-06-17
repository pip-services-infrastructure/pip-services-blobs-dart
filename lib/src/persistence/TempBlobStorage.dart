import 'dart:async';
import 'dart:io';

import 'package:pip_services3_commons/pip_services3_commons.dart';

class TempBlobStorage implements IConfigurable, IOpenable, ICleanable {
  String _path = './data/temp';
  int _maxBlobSize = 100 * 1024;
  int _minChunkSize = 5 * 1024 * 1024;
  int _cleanupTimeout = 9000000;
  int _writeTimeout = 9000000;
  Timer _cleanupInterval;
  bool _opened = false;

  TempBlobStorage([String path]) {
    _path = path ?? _path;
  }

  @override
  void configure(ConfigParams config) {
    _path = config.getAsStringWithDefault('temp_path', _path);
    _minChunkSize =
        config.getAsLongWithDefault('options.min_chunk_size', _minChunkSize);
    _maxBlobSize =
        config.getAsLongWithDefault('options.max_blob_size', _maxBlobSize);
    _cleanupTimeout =
        config.getAsLongWithDefault('options.cleanup_timeout', _cleanupTimeout);
    _writeTimeout =
        config.getAsLongWithDefault('options.write_timeout', _writeTimeout);
  }

  @override
  bool isOpen() {
    return _opened;
  }

  Future open(String correlationId) async {
    if (_opened == true) {
      return;
    }

    // Create filter if it doesn't exist
    if (!Directory(_path).existsSync()) {
      Directory(_path).createSync();
    }

    // Restart cleanup process
    if (_cleanupInterval != null) {
      _cleanupInterval.cancel();
    }

    _cleanupInterval = Timer.periodic(
      Duration(milliseconds: _cleanupTimeout),
      (tm) async {
        await cleanup('');
      },
    );

    _opened = true;
  }

  @override
  Future close(String correlationId) async {
    // Stop cleanup process
    if (_cleanupInterval != null) {
      _cleanupInterval.cancel();
      _cleanupInterval = null;
    }

    _opened = false;
  }

  String makeFileName(String id) {
    return _path + '/' + id + '.tmp';
  }

  Future<int> getChunksSize(String correlationId, String id) {
    Read temp size
    fs.stat(this.makeFileName(id), (err, stats) => {
        let size = stats != null ? stats.size : 0;
        if (err != null && err.code == 'ENOENT')
            err = null;

        callback(err, size);
    });
  }

  // public appendChunk(String correlationId, id: string, buffer: Buffer,
  //     callback: (err: any, size: number) => void): void {

  //     this.getChunksSize(correlationId, id, (err, size) => {
  //         // Enforce max blob size
  //         size = size + buffer.length;
  //         if (size > this._maxBlobSize) {
  //             let err = new BadRequestException(
  //                 correlationId,
  //                 'BLOB_TOO_LARGE',
  //                 'Blob ' + id + ' exceeds allowed maximum size of ' + this._maxBlobSize
  //             ).withDetails('blob_id', id)
  //             .withDetails('size', size)
  //             .withDetails('max_size', this._maxBlobSize);
  //         }

  //         if (err != null) {
  //             callback(err, null);
  //             return;
  //         }

  //         fs.appendFile(this.makeFileName(id), buffer, (err) => {
  //             callback(err, size);
  //         });
  //     });
  // }

  // public readChunks(String correlationId, id: string,
  //     callback: (err: any, buffer: Buffer) => void): void {
  //     fs.readFile(this.makeFileName(id), (err, data) => {
  //         if (err != null && err.code == 'ENOENT')
  //             err = null;
  //         callback(err, data);
  //     });
  // }

  // public deleteChunks(String correlationId, id: string, callback: (err: any) => void): void {
  //     fs.unlink(this.makeFileName(id), (err) => {
  //         if (err != null && err.code == 'ENOENT')
  //             err = null;
  //         callback(err);
  //     });
  // }

  Future cleanup(String correlationId) async {
    var cutoffTime =
        DateTime.now().toUtc().millisecondsSinceEpoch - _writeTimeout;

    var files = await Directory(_path).listSync();

    files = files.where((file) => file.path.endsWith('.tmp'));
    for (var file in files) {
      var stat = await file.stat();
      if (stat.modified.millisecondsSinceEpoch < cutoffTime) {
        await file.delete();
      }
    }
  }

  @override
  Future clear(String correlationId) async {
    var files = Directory(_path).listSync();

    files = files.where((file) => file.path.endsWith('.dat'));
    for (var file in files) {
      file.deleteSync(); //(_path + '/' + file);
    }
  }
}
