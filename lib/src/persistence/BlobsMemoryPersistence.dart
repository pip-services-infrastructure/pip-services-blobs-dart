
import  'package:pip_services3_commons/pip_services3_commons.dart';
import  'package:pip_services3_data/pip_services3_data.dart';

import  '../data/version1/BlobInfoV1.dart';
import  './IBlobsPersistence.dart';

class BlobsMemoryPersistence 
    extends IdentifiableMemoryPersistence<BlobInfoV1, String> 
    implements IBlobsPersistence {

    var content = <String, dynamic>{}; // { [index: string]: Buffer } = {};
    int maxBlobSize = 100 * 1024;

    BlobsMemoryPersistence():super();

    @override
  void configure(ConfigParams config ) {
        super.configure(config);
        maxBlobSize = config.getAsLongWithDefault('options.max_blob_size', maxBlobSize);
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

        return (BlobInfoV1 item ) {
            if (search != null && !_matchSearch(item, search))
                // return false;
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
            if (expired != null && expired == true && item.expire_time.millisecondsSinceEpoch > now.millisecondsSinceEpoch) {
              return false;
            }
            if (expired != null && expired == false && item.expire_time.millisecondsSinceEpoch <= now.millisecondsSinceEpoch) {
              return false;
            }
            if (fromCreateTime != null && item.create_time.millisecondsSinceEpoch >= fromCreateTime.millisecondsSinceEpoch) {
              return false;
            }
            if (toCreateTime != null && item.create_time.millisecondsSinceEpoch < toCreateTime.millisecondsSinceEpoch) {
              return false;
            }
            return true;
        };
    }

    // public getPageByFilter(String correlationId, filter: FilterParams, paging: PagingParams,
    //     callback: (err: any, page: DataPage<BlobInfoV1>) => void): void {
    //     super.getPageByFilter(correlationId, this._composeFilter(filter), paging, null, null, callback);
    // }

    // public markCompleted(String correlationId, ids: string[],
    //     callback: (err: any) => void): void {
    //     async.each(ids, (id, callback) => {
    //         var data = AnyValueMap.fromTuples(
    //             'completed', true
    //         );
    //         super.updatePartially(correlationId, id, data, callback);
    //     }, callback);
    // }

    // public deleteById(String correlationId, id: string,
    //     callback?: (err: any, item: BlobInfoV1) => void): void {
    //     delete this.content[id];
    //     super.deleteById(correlationId, id, callback);
    // }

    // public deleteByIds(String correlationId, ids: string[],
    //     callback?: (err: any) => void): void {
    //     _.each(ids, (id) => {
    //         delete this.content[id];
    //     });
    //     super.deleteByIds(correlationId, ids, callback);
    // }

    // public clear(String correlationId, callback?: (err: any) => void): void {
    //     this.content = {};
    //     super.clear(correlationId, callback);
    // }


    // public isUriSupported(): boolean {
    //     return false;
    // }

    // public getUri(String correlationId, id: string,
    //     callback: (err: any, uri: string) => void): void {
    //     callback(null, null);
    // }

    // public beginWrite(String correlationId, item: BlobInfoV1,
    //     callback: (err: any, token: string) => void): void {
        
    //     if (item.size != null && item.size > this.maxBlobSize) {
    //         var err = BadRequestException(
    //             correlationId,
    //             'BLOB_TOO_LARGE',
    //             'Blob ' + item.id + ' exceeds allowed maximum size of ' + this.maxBlobSize
    //         ).withDetails('blob_id', item.id)
    //         .withDetails('size', item.size)
    //         .withDetails('max_size', this.maxBlobSize);
    //         callback(err, null);
    //         return;
    //     }

    //     super.create(correlationId, item, (err, item) => {
    //         var buffer = Buffer([])
    //         this.content[item.id] = buffer;
    //         callback(null, item.id);
    //     });
    // }

    // public writeChunk(String correlationId, token: string, chunk: string,
    //     callback: (err: any, token: string) => void): void {
        
    //     var id = token;
    //     var oldBuffer = this.content[id];
    //     if (oldBuffer == null) {
    //         var err = NotFoundException(
    //             correlationId, 
    //             'BLOB_NOT_FOUND', 
    //             'Blob ' + id + ' was not found'
    //         ).withDetails('blob_id', id);
    //         callback(err, null);
    //         return;
    //     }

    //     // Enforce maximum size
    //     var chunkLength = chunk ? chunk.length : 0;
    //     if (this.maxBlobSize > 0 && oldBuffer.length + chunkLength > this.maxBlobSize) {
    //         var err = BadRequestException(
    //             correlationId,
    //             'BLOB_TOO_LARGE',
    //             'Blob ' + id + ' exceeds allowed maximum size of ' + this.maxBlobSize
    //         ).withDetails('blob_id', id)
    //         .withDetails('size', oldBuffer.length + chunkLength)
    //         .withDetails('max_size', this.maxBlobSize);
    //         callback(err, null);
    //         return;
    //     }

    //     var buffer = Buffer("", "base64");
    //     if (chunk != null && chunk.length > 0) 
    //         buffer = Buffer.from(chunk, 'base64');
    //     this.content[id] = Buffer.concat([oldBuffer, buffer]);

    //     callback(null, token);
    // }

    // public endWrite(String correlationId, token: string, chunk: string,
    //     callback?: (err: any, item: BlobInfoV1) => void): void {

    //     var id = token;
    //     var item: BlobInfoV1;

    //     async.series([
    //         // Write last chunk of the blob
    //         (callback) => {
    //             this.writeChunk(correlationId, token, chunk, callback);
    //         },
    //         // Get blob info
    //         (callback) => {
    //             super.getOneById(correlationId, id, (err, data) => {
    //                 if (err == null && data == null) {
    //                     err = NotFoundException(
    //                         correlationId, 
    //                         'BLOB_NOT_FOUND', 
    //                         'Blob ' + id + ' was not found'
    //                     ).withDetails('blob_id', id);
    //                 }
    //                 item = data;
    //                 callback(err);
    //             });
    //         },
    //         // Update blob info with size and create time
    //         (callback) => {
    //             var buffer = this.content[id];
    //             item.create_time = Date();
    //             item.size = buffer != null ? buffer.length : 0;

    //             super.update(correlationId, item, callback);
    //         }
    //     ], (err) => {
    //         if (err) callback(err, null);
    //         else callback(null, item);
    //     });
    // }

    // public abortWrite(String correlationId, token: string,
    //     callback?: (err: any) => void): void {
    //     var id = token;
    //     this.deleteById(correlationId, id, callback);
    // }

    // public beginRead(String correlationId, id: string,
    //     callback: (err: any, item: BlobInfoV1) => void): void {
    //     var oldBuffer = this.content[id];
    //     if (oldBuffer == null) {
    //         var err = NotFoundException(
    //             correlationId, 
    //             'BLOB_NOT_FOUND', 
    //             'Blob ' + id + ' was not found'
    //         ).withDetails('blob_id', id);
    //         callback(err, null);
    //         return;
    //     }

    //     super.getOneById(correlationId, id, callback);
    // }

    // public readChunk(String correlationId, id: string,  
    //     skip: number, take: number,
    //     callback: (err: any, chunk: string) => void): void {

    //     var oldBuffer = this.content[id];
    //     if (oldBuffer == null) {
    //         var err = NotFoundException(
    //             correlationId, 
    //             'BLOB_NOT_FOUND', 
    //             'Blob ' + id + ' was not found'
    //         ).withDetails('blob_id', id);
    //         callback(err, null);
    //         return;
    //     }

    //     var result = oldBuffer.toString('base64', skip, skip + take);
    //     callback(null, result);
    // }

    // public endRead(String correlationId, id: string,
    //     callback?: (err: any) => void): void {
    //     if (callback) callback(null);
    // }

}
