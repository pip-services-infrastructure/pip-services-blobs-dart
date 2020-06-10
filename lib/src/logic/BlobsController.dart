// let async = require('async');

// import { ConfigParams } from 'package:pip_services3_commons-node';
// import { IConfigurable } from 'package:pip_services3_commons-node';
// import { IReferences } from 'package:pip_services3_commons-node';
// import { Descriptor } from 'package:pip_services3_commons-node';
// import { IReferenceable } from 'package:pip_services3_commons-node';
// import { DependencyResolver } from 'package:pip_services3_commons-node';
// import { FilterParams } from 'package:pip_services3_commons-node';
// import { PagingParams } from 'package:pip_services3_commons-node';
// import { DataPage } from 'package:pip_services3_commons-node';
// import { ICommandable } from 'package:pip_services3_commons-node';
// import { CommandSet } from 'package:pip_services3_commons-node';
// import { IdGenerator } from 'package:pip_services3_commons-node';

// import { BlobInfoV1 } from '../data/version1/BlobInfoV1';
// import { IBlobsPersistence } from '../persistence/IBlobsPersistence';
// import { IBlobsController } from './IBlobsController';
// import { BlobsCommandSet } from './BlobsCommandSet';

// export class BlobsController implements IConfigurable, IReferenceable, ICommandable, IBlobsController {
//     private static _defaultConfig: ConfigParams = ConfigParams.fromTuples(
//         'dependencies.persistence', 'pip-services-blobs:persistence:*:*:1.0',
//     );

//     private _dependencyResolver: DependencyResolver = new DependencyResolver(BlobsController._defaultConfig);
//     private _persistence: IBlobsPersistence;
//     private _commandSet: BlobsCommandSet;

//     public configure(config: ConfigParams): void {
//         this._dependencyResolver.configure(config);
//     }

//     public setReferences(references: IReferences): void {
//         this._dependencyResolver.setReferences(references);
//         this._persistence = this._dependencyResolver.getOneRequired<IBlobsPersistence>('persistence');
//     }

//     public getCommandSet(): CommandSet {
//         if (this._commandSet == null)
//             this._commandSet = new BlobsCommandSet(this);
//         return this._commandSet;
//     }

//     public getBlobsByFilter(String correlationId, filter: FilterParams, paging: PagingParams,
//         callback: (err: any, page: DataPage<BlobInfoV1>) => void): void {
//         this._persistence.getPageByFilter(correlationId, filter, paging, callback);
//     }

//     public getBlobsByIds(String correlationId, blobIds: string[],
//         callback: (err: any, blobs: BlobInfoV1[]) => void): void {
//         this._persistence.getListByIds(correlationId, blobIds, callback);
//     }

//     public getBlobById(String correlationId, blobId: string,
//         callback: (err: any, blob: BlobInfoV1) => void): void {
//         this._persistence.getOneById(correlationId, blobId, callback);
//     }

//     public getBlobUriById(String correlationId, blobId: string,
//         callback: (err: any, uri: string) => void): void {
//         this._persistence.getUri(correlationId, blobId, callback);
//     }

//     private normalizeName(name: string): string {
//         if (name == null) return null;

//         name = name.replace('\\', '/');
//         let pos = name.lastIndexOf('/');
//         if (pos >= 0)
//             name = name.substring(pos + 1);

//         return name;
//     }

//     public beginBlobWrite(String correlationId, blob: BlobInfoV1,
//         callback: (err: any, token: string) => void): void {
//         blob.id = blob.id || IdGenerator.nextLong();
//         blob.name = this.normalizeName(blob.name);

//         this._persistence.beginWrite(correlationId, blob, callback);
//     }

//     public writeBlobChunk(String correlationId, token: string, chunk: string,
//         callback: (err: any, token: string) => void): void {
//         chunk = chunk || "";
//         this._persistence.writeChunk(correlationId, token, chunk, callback);
//     }

//     public endBlobWrite(String correlationId, token: string, chunk: string,
//         callback?: (err: any, blob: BlobInfoV1) => void): void {
//         chunk = chunk || "";
//         this._persistence.endWrite(correlationId, token, chunk, callback);
//     }

//     public abortBlobWrite(String correlationId, token: string,
//         callback?: (err: any) => void): void {
//         this._persistence.abortWrite(correlationId, token, callback);
//     }
    
//     public beginBlobRead(String correlationId, blobId: string,
//         callback: (err: any, blob: BlobInfoV1) => void): void {
//         this._persistence.beginRead(correlationId, blobId, callback);
//     }

//     public readBlobChunk(String correlationId, blobId: string, skip: number, take: number,
//         callback: (err: any, chunk: string) => void): void {
//         this._persistence.readChunk(correlationId, blobId, skip, take, callback);
//     }

//     public endBlobRead(String correlationId, blobId: string, 
//         callback?: (err: any) => void): void {
//         this._persistence.endRead(correlationId, blobId, callback);
//     }

//     public updateBlobInfo(String correlationId, blob: BlobInfoV1,
//         callback: (err: any, item: BlobInfoV1) => void): void {
//         this._persistence.update(correlationId, blob, callback);
//     }

//     public markBlobsCompleted(String correlationId, blobIds: string[],
//         callback: (err: any) => void): void {
//         this._persistence.markCompleted(correlationId, blobIds, callback);
//     }

//     public deleteBlobById(String correlationId, blobId: string,
//         callback?: (err: any) => void): void {
//         this._persistence.deleteById(correlationId, blobId, callback);
//     }

//     public deleteBlobsByIds(String correlationId, blobIds: string[],
//         callback?: (err: any) => void): void {
//         this._persistence.deleteByIds(correlationId, blobIds, callback);
//     }
// }
