// import { CommandSet } from 'package:pip_services3_commons-node';
// import { ICommand } from 'package:pip_services3_commons-node';
// import { Command } from 'package:pip_services3_commons-node';
// import { Schema } from 'package:pip_services3_commons-node';
// import { Parameters } from 'package:pip_services3_commons-node';
// import { FilterParams } from 'package:pip_services3_commons-node';
// import { PagingParams } from 'package:pip_services3_commons-node';
// import { ObjectSchema } from 'package:pip_services3_commons-node';
// import { ArraySchema } from 'package:pip_services3_commons-node';
// import { TypeCode } from 'package:pip_services3_commons-node';
// import { FilterParamsSchema } from 'package:pip_services3_commons-node';
// import { PagingParamsSchema } from 'package:pip_services3_commons-node';
// import { DateTimeConverter } from 'package:pip_services3_commons-node';

// import { IBlobsController } from './IBlobsController';
// import { BlobInfoV1Schema } from '../data/version1/BlobInfoV1Schema';

// export class BlobsCommandSet extends CommandSet {
//     private _logic: IBlobsController;

//     constructor(logic: IBlobsController) {
//         super();

//         this._logic = logic;

// 		this.addCommand(this.makeGetBlobsByFilterCommand());
// 		this.addCommand(this.makeGetBlobsByIdsCommand());
// 		this.addCommand(this.makeGetBlobByIdCommand());
// 		this.addCommand(this.makeGetBlobUriByIdCommand());
		
// 		this.addCommand(this.makeBeginBlobWriteCommand());
// 		this.addCommand(this.makeWriteBlobChunkCommand());
// 		this.addCommand(this.makeEndBlobWriteCommand());
// 		this.addCommand(this.makeAbortBlobWriteCommand());

// 		this.addCommand(this.makeBeginBlobReadCommand());
// 		this.addCommand(this.makeReadBlobChunkCommand());
// 		this.addCommand(this.makeEndBlobReadCommand());

// 		this.addCommand(this.makeUpdateBlobInfoCommand());
// 		this.addCommand(this.makeMarkBlobsCompletedCommand());
// 		this.addCommand(this.makeDeleteBlobByIdCommand());
// 		this.addCommand(this.makeDeleteBlobsByIdsCommand());
//     }

// 	private makeGetBlobsByFilterCommand(): ICommand {
// 		return new Command(
// 			"get_blobs_by_filter",
// 			new ObjectSchema(true)
// 				.withOptionalProperty("filter", new FilterParamsSchema())
// 				.withOptionalProperty("paging", new PagingParamsSchema())
// 			,
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let filter = FilterParams.fromValue(args.get("filter"));
//                 let paging = PagingParams.fromValue(args.get("paging"));
//                 this._logic.getBlobsByFilter(correlationId, filter, paging, callback);
//             }
// 		);
// 	}

// 	private makeGetBlobsByIdsCommand(): ICommand {
// 		return new Command(
// 			"get_blobs_by_ids",
// 			new ObjectSchema(true)
// 				.withRequiredProperty("blob_ids", new ArraySchema(TypeCode.String)),
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
// 				let temp: string = args.getAsString("blob_ids");
// 				let blobIds = temp.split(',');
//                 this._logic.getBlobsByIds(correlationId, blobIds, callback);
//             }
// 		);
// 	}

// 	private makeGetBlobByIdCommand(): ICommand {
// 		return new Command(
// 			"get_blob_by_id",
// 			new ObjectSchema(true)
// 				.withRequiredProperty("blob_id", TypeCode.String),
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let blobId = args.getAsNullableString("blob_id");
//                 this._logic.getBlobById(correlationId, blobId, callback);
//             }
// 		);
// 	}

// 	private makeGetBlobUriByIdCommand(): ICommand {
// 		return new Command(
// 			"get_blob_uri_by_id",
// 			new ObjectSchema(true)
// 				.withRequiredProperty("blob_id", TypeCode.String),
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let blobId = args.getAsNullableString("blob_id");
//                 this._logic.getBlobUriById(correlationId, blobId, callback);
//             }
// 		);
// 	}

// 	private makeBeginBlobWriteCommand(): ICommand {
// 		return new Command(
// 			"begin_blob_write",
// 			new ObjectSchema(true)
// 				.withRequiredProperty("blob", new BlobInfoV1Schema()),
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let blob = args.get("blob");
//                 this._logic.beginBlobWrite(correlationId, blob, callback);
//             }
// 		);
// 	}

// 	private makeWriteBlobChunkCommand(): ICommand {
// 		return new Command(
// 			"write_blob_chunk",
// 			new ObjectSchema(true)
//                 .withRequiredProperty("token", TypeCode.String)
//                 .withRequiredProperty("chunk", TypeCode.String),				
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let token = args.getAsNullableString("token");
//                 let chunk = args.getAsNullableString("chunk");
//                 this._logic.writeBlobChunk(correlationId, token, chunk, callback);
//             }
// 		);
// 	}

// 	private makeEndBlobWriteCommand(): ICommand {
// 		return new Command(
// 			"end_blob_write",
// 			new ObjectSchema(true)
//                 .withRequiredProperty("token", TypeCode.String)
//                 .withOptionalProperty("chunk", TypeCode.String),				
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let token = args.getAsNullableString("token");
//                 let chunk = args.getAsNullableString("chunk");
//                 this._logic.endBlobWrite(correlationId, token, chunk, callback);
//             }
// 		);
// 	}

// 	private makeAbortBlobWriteCommand(): ICommand {
// 		return new Command(
// 			"abort_blob_write",
// 			new ObjectSchema(true)
//                 .withRequiredProperty("token", TypeCode.String),
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let token = args.getAsNullableString("token");
//                 this._logic.abortBlobWrite(correlationId, token, (err) => {
// 					callback(err, null);
// 				});
//             }
// 		);
// 	}

// 	private makeBeginBlobReadCommand(): ICommand {
// 		return new Command(
// 			"begin_blob_read",
// 			new ObjectSchema(true)
// 				.withRequiredProperty("blob_id", TypeCode.String),
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let blobId = args.getAsNullableString("blob_id");
//                 this._logic.beginBlobRead(correlationId, blobId, callback);
//             }
// 		);
// 	}

// 	private makeReadBlobChunkCommand(): ICommand {
// 		return new Command(
// 			"read_blob_chunk",
// 			new ObjectSchema(true)
// 				.withRequiredProperty("blob_id", TypeCode.String)
//                 .withRequiredProperty("skip", TypeCode.Long)
//                 .withRequiredProperty("take", TypeCode.Long),				
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let blobId = args.getAsNullableString("blob_id");
//                 let skip = args.getAsNullableLong("skip");
//                 let take = args.getAsNullableLong("take");
//                 this._logic.readBlobChunk(correlationId, blobId, skip, take, callback);
//             }
// 		);
// 	}

// 	private makeEndBlobReadCommand(): ICommand {
// 		return new Command(
// 			"end_blob_read",
// 			new ObjectSchema(true)
// 				.withRequiredProperty("blob_id", TypeCode.String),				
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let blobId = args.getAsNullableString("blob_id");
//                 this._logic.endBlobRead(correlationId, blobId, (err) => {
// 					callback(err, null);
// 				});
//             }
// 		);
// 	}

// 	private makeUpdateBlobInfoCommand(): ICommand {
// 		return new Command(
// 			"update_blob_info",
// 			new ObjectSchema(true)
// 				.withRequiredProperty("blob", new BlobInfoV1Schema()),
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let blob = args.get("blob");
//                 this._logic.updateBlobInfo(correlationId, blob, callback);
//             }
// 		);
// 	}

// 	private makeMarkBlobsCompletedCommand(): ICommand {
// 		return new Command(
// 			"mark_blobs_completed",
// 			new ObjectSchema(true)
// 				.withRequiredProperty("blob_ids", new ArraySchema(TypeCode.String)),
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let blobIds = args.get("blob_ids");
//                 this._logic.markBlobsCompleted(correlationId, blobIds, (err) => {
// 					callback(err, null);
// 				});
//             }
// 		);
// 	}

// 	private makeDeleteBlobByIdCommand(): ICommand {
// 		return new Command(
// 			"delete_blob_by_id",
// 			new ObjectSchema(true)
// 				.withRequiredProperty("blob_id", TypeCode.String),
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let blobId = args.getAsNullableString("blob_id");
//                 this._logic.deleteBlobById(correlationId, blobId, (err) => {
// 					callback(err, null);
// 				});
// 			}
// 		);
// 	}

// 	private makeDeleteBlobsByIdsCommand(): ICommand {
// 		return new Command(
// 			"delete_blobs_by_ids",
// 			new ObjectSchema(true)
// 				.withRequiredProperty("blob_ids", new ArraySchema(TypeCode.String)),
//             (String correlationId, args: Parameters, callback: (err: any, result: any) => void) => {
//                 let blobIds = args.get("blob_ids");
//                 this._logic.deleteBlobsByIds(correlationId, blobIds, (err) => {
// 					callback(err, null);
// 				});
// 			}
// 		);
// 	}

// }