///
//  Generated code. Do not modify.
//  source: blobs_v1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ErrorDescription$json = const {
  '1': 'ErrorDescription',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'category', '3': 2, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'correlation_id', '3': 4, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'status', '3': 5, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'cause', '3': 7, '4': 1, '5': 9, '10': 'cause'},
    const {'1': 'stack_trace', '3': 8, '4': 1, '5': 9, '10': 'stackTrace'},
    const {'1': 'details', '3': 9, '4': 3, '5': 11, '6': '.blobs_v1.ErrorDescription.DetailsEntry', '10': 'details'},
  ],
  '3': const [ErrorDescription_DetailsEntry$json],
};

const ErrorDescription_DetailsEntry$json = const {
  '1': 'DetailsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const PagingParams$json = const {
  '1': 'PagingParams',
  '2': const [
    const {'1': 'skip', '3': 1, '4': 1, '5': 3, '10': 'skip'},
    const {'1': 'take', '3': 2, '4': 1, '5': 5, '10': 'take'},
    const {'1': 'total', '3': 3, '4': 1, '5': 8, '10': 'total'},
  ],
};

const BlobInfo$json = const {
  '1': 'BlobInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'group', '3': 2, '4': 1, '5': 9, '10': 'group'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'size', '3': 4, '4': 1, '5': 3, '10': 'size'},
    const {'1': 'content_type', '3': 5, '4': 1, '5': 9, '10': 'contentType'},
    const {'1': 'create_time', '3': 6, '4': 1, '5': 9, '10': 'createTime'},
    const {'1': 'expire_time', '3': 7, '4': 1, '5': 9, '10': 'expireTime'},
    const {'1': 'completed', '3': 8, '4': 1, '5': 8, '10': 'completed'},
  ],
};

const BlobInfoPage$json = const {
  '1': 'BlobInfoPage',
  '2': const [
    const {'1': 'total', '3': 1, '4': 1, '5': 3, '10': 'total'},
    const {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.blobs_v1.BlobInfo', '10': 'data'},
  ],
};

const BlobInfoPageRequest$json = const {
  '1': 'BlobInfoPageRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'filter', '3': 2, '4': 3, '5': 11, '6': '.blobs_v1.BlobInfoPageRequest.FilterEntry', '10': 'filter'},
    const {'1': 'paging', '3': 3, '4': 1, '5': 11, '6': '.blobs_v1.PagingParams', '10': 'paging'},
  ],
  '3': const [BlobInfoPageRequest_FilterEntry$json],
};

const BlobInfoPageRequest_FilterEntry$json = const {
  '1': 'FilterEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const BlobInfoPageReply$json = const {
  '1': 'BlobInfoPageReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.blobs_v1.ErrorDescription', '10': 'error'},
    const {'1': 'page', '3': 2, '4': 1, '5': 11, '6': '.blobs_v1.BlobInfoPage', '10': 'page'},
  ],
};

const BlobIdsRequest$json = const {
  '1': 'BlobIdsRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'blob_ids', '3': 2, '4': 3, '5': 9, '10': 'blobIds'},
  ],
};

const BlobIdRequest$json = const {
  '1': 'BlobIdRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'blob_id', '3': 2, '4': 1, '5': 9, '10': 'blobId'},
  ],
};

const BlobInfoObjectRequest$json = const {
  '1': 'BlobInfoObjectRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'blob', '3': 2, '4': 1, '5': 11, '6': '.blobs_v1.BlobInfo', '10': 'blob'},
  ],
};

const BlobInfoObjectsReply$json = const {
  '1': 'BlobInfoObjectsReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.blobs_v1.ErrorDescription', '10': 'error'},
    const {'1': 'blobs', '3': 2, '4': 3, '5': 11, '6': '.blobs_v1.BlobInfo', '10': 'blobs'},
  ],
};

const BlobInfoObjectReply$json = const {
  '1': 'BlobInfoObjectReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.blobs_v1.ErrorDescription', '10': 'error'},
    const {'1': 'blob', '3': 2, '4': 1, '5': 11, '6': '.blobs_v1.BlobInfo', '10': 'blob'},
  ],
};

const BlobUriReply$json = const {
  '1': 'BlobUriReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.blobs_v1.ErrorDescription', '10': 'error'},
    const {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
  ],
};

const BlobTokenRequest$json = const {
  '1': 'BlobTokenRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const BlobTokenWithChunkRequest$json = const {
  '1': 'BlobTokenWithChunkRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'chunk', '3': 3, '4': 1, '5': 9, '10': 'chunk'},
  ],
};

const BlobTokenReply$json = const {
  '1': 'BlobTokenReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.blobs_v1.ErrorDescription', '10': 'error'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const BlobEmptyReply$json = const {
  '1': 'BlobEmptyReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.blobs_v1.ErrorDescription', '10': 'error'},
  ],
};

const BlobReadRequest$json = const {
  '1': 'BlobReadRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'blob_id', '3': 2, '4': 1, '5': 9, '10': 'blobId'},
    const {'1': 'skip', '3': 3, '4': 1, '5': 3, '10': 'skip'},
    const {'1': 'take', '3': 4, '4': 1, '5': 3, '10': 'take'},
  ],
};

const BlobChunkReply$json = const {
  '1': 'BlobChunkReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.blobs_v1.ErrorDescription', '10': 'error'},
    const {'1': 'chunk', '3': 2, '4': 1, '5': 9, '10': 'chunk'},
  ],
};

