// import 'dart:async';

// import 'package:pip_services3_commons/pip_services3_commons.dart';

// import '../data/version1/BlobInfoV1.dart';
// import '../persistence/IBlobsPersistence.dart';
// import './IBlobsController.dart';
// import './BlobsCommandSet.dart';

// class BlobsController
//     implements IConfigurable, IReferenceable, ICommandable, IBlobsController {
//   static final _defaultConfig = ConfigParams.fromTuples([
//     'dependencies.persistence',
//     'pip-services-blobs:persistence:*:*:1.0',
//   ]);

//   final _dependencyResolver =
//       DependencyResolver(BlobsController._defaultConfig);
//   IBlobsPersistence _persistence;
//   BlobsCommandSet _commandSet;

//   @override
//   void configure(ConfigParams config) {
//     _dependencyResolver.configure(config);
//   }

//   @override
//   void setReferences(IReferences references) {
//     _dependencyResolver.setReferences(references);
//     _persistence =
//         _dependencyResolver.getOneRequired<IBlobsPersistence>('persistence');
//   }

//   @override
//   CommandSet getCommandSet() {
//     _commandSet ??= BlobsCommandSet(this);
//     return _commandSet;
//   }

  // public getBlobsByFilter(String correlationId, filter: FilterParams, paging: PagingParams,
  //     callback: (err: any, page: DataPage<BlobInfoV1>) => void): void {
  //     this._persistence.getPageByFilter(correlationId, filter, paging, callback);
  // }

  // public getBlobsByIds(String correlationId, blobIds: string[],
  //     callback: (err: any, blobs: BlobInfoV1[]) => void): void {
  //     this._persistence.getListByIds(correlationId, blobIds, callback);
  // }

  // public getBlobById(String correlationId, blobId: string,
  //     callback: (err: any, blob: BlobInfoV1) => void): void {
  //     this._persistence.getOneById(correlationId, blobId, callback);
  // }

  // public getBlobUriById(String correlationId, blobId: string,
  //     callback: (err: any, uri: string) => void): void {
  //     this._persistence.getUri(correlationId, blobId, callback);
  // }

  // private normalizeName(name: string): string {
  //     if (name == null) return null;

  //     name = name.replace('\\', '/');
  //     let pos = name.lastIndexOf('/');
  //     if (pos >= 0)
  //         name = name.substring(pos + 1);

  //     return name;
  // }

  // public beginBlobWrite(String correlationId, blob: BlobInfoV1,
  //     callback: (err: any, token: string) => void): void {
  //     blob.id = blob.id || IdGenerator.nextLong();
  //     blob.name = this.normalizeName(blob.name);

  //     this._persistence.beginWrite(correlationId, blob, callback);
  // }

  // public writeBlobChunk(String correlationId, token: string, chunk: string,
  //     callback: (err: any, token: string) => void): void {
  //     chunk = chunk || "";
  //     this._persistence.writeChunk(correlationId, token, chunk, callback);
  // }

  // public endBlobWrite(String correlationId, token: string, chunk: string,
  //     callback?: (err: any, blob: BlobInfoV1) => void): void {
  //     chunk = chunk || "";
  //     this._persistence.endWrite(correlationId, token, chunk, callback);
  // }

  // public abortBlobWrite(String correlationId, token: string,
  //     callback?: (err: any) => void): void {
  //     this._persistence.abortWrite(correlationId, token, callback);
  // }

  // public beginBlobRead(String correlationId, blobId: string,
  //     callback: (err: any, blob: BlobInfoV1) => void): void {
  //     this._persistence.beginRead(correlationId, blobId, callback);
  // }

  // public readBlobChunk(String correlationId, blobId: string, skip: number, take: number,
  //     callback: (err: any, chunk: string) => void): void {
  //     this._persistence.readChunk(correlationId, blobId, skip, take, callback);
  // }

  // public endBlobRead(String correlationId, blobId: string,
  //     callback?: (err: any) => void): void {
  //     this._persistence.endRead(correlationId, blobId, callback);
  // }

  // public updateBlobInfo(String correlationId, blob: BlobInfoV1,
  //     callback: (err: any, item: BlobInfoV1) => void): void {
  //     this._persistence.update(correlationId, blob, callback);
  // }

  // public markBlobsCompleted(String correlationId, blobIds: string[],
  //     callback: (err: any) => void): void {
  //     this._persistence.markCompleted(correlationId, blobIds, callback);
  // }

  // public deleteBlobById(String correlationId, blobId: string,
  //     callback?: (err: any) => void): void {
  //     this._persistence.deleteById(correlationId, blobId, callback);
  // }

  // public deleteBlobsByIds(String correlationId, blobIds: string[],
  //     callback?: (err: any) => void): void {
  //     this._persistence.deleteByIds(correlationId, blobIds, callback);
  // }
// }
