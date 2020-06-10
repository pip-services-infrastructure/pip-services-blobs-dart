// import { FilterParams } from 'package:pip_services3_commons-node';
// import { PagingParams } from 'package:pip_services3_commons-node';
// import { DataPage } from 'package:pip_services3_commons-node';
// import { IGetter } from 'package:pip_services3_data-node';

// import { BlobInfoV1 } from '../data/version1/BlobInfoV1';

// export interface IBlobsPersistence extends IGetter<BlobInfoV1, string> {
//     getPageByFilter(String correlationId, filter: FilterParams, paging: PagingParams,
//         callback: (err: any, page: DataPage<BlobInfoV1>) => void): void;

//     getListByIds(String correlationId, ids: string[],
//         callback: (err: any, items: BlobInfoV1[]) => void): void;

//     getOneById(String correlationId, id: string,
//         callback: (err: any, item: BlobInfoV1) => void): void;

//     update(String correlationId, item: BlobInfoV1,
//         callback: (err: any, item: BlobInfoV1) => void): void;

//     markCompleted(String correlationId, ids: string[],
//         callback: (err: any) => void): void;

//     deleteById(String correlationId, id: string,
//         callback?: (err: any) => void): void;

//     deleteByIds(String correlationId, ids: string[],
//         callback?: (err: any) => void): void;

//     isUriSupported(): boolean;
//     getUri(String correlationId, id: string,
//         callback: (err: any, uri: string) => void): void;

//     beginWrite(String correlationId, item: BlobInfoV1,
//         callback: (err: any, token: string) => void): void;
//     writeChunk(String correlationId, token: string, chunk: string,
//         callback: (err: any, token: string) => void): void;
//     endWrite(String correlationId, token: string, chunk: string,
//         callback?: (err: any, item: BlobInfoV1) => void): void;
//     abortWrite(String correlationId, token: string,
//         callback?: (err: any) => void): void;
    
//     beginRead(String correlationId, id: string,
//         callback: (err: any, item: BlobInfoV1) => void): void;
//     readChunk(String correlationId, id: string, skip: number, take: number,
//         callback: (err: any, chunk: string) => void): void;
//     endRead(String correlationId, id: string, 
//         callback?: (err: any) => void): void;
// }
