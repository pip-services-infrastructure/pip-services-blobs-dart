///
//  Generated code. Do not modify.
//  source: blobs_v1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'blobs_v1.pb.dart' as $0;
export 'blobs_v1.pb.dart';

class BlobsClient extends $grpc.Client {
  static final _$get_blobs_by_filter =
      $grpc.ClientMethod<$0.BlobInfoPageRequest, $0.BlobInfoPageReply>(
          '/blobs_v1.Blobs/get_blobs_by_filter',
          ($0.BlobInfoPageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BlobInfoPageReply.fromBuffer(value));
  static final _$get_blobs_by_ids =
      $grpc.ClientMethod<$0.BlobIdsRequest, $0.BlobInfoObjectsReply>(
          '/blobs_v1.Blobs/get_blobs_by_ids',
          ($0.BlobIdsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BlobInfoObjectsReply.fromBuffer(value));
  static final _$get_blob_by_id =
      $grpc.ClientMethod<$0.BlobIdRequest, $0.BlobInfoObjectReply>(
          '/blobs_v1.Blobs/get_blob_by_id',
          ($0.BlobIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BlobInfoObjectReply.fromBuffer(value));
  static final _$get_blob_uri_by_id =
      $grpc.ClientMethod<$0.BlobIdRequest, $0.BlobUriReply>(
          '/blobs_v1.Blobs/get_blob_uri_by_id',
          ($0.BlobIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BlobUriReply.fromBuffer(value));
  static final _$begin_blob_write =
      $grpc.ClientMethod<$0.BlobInfoObjectRequest, $0.BlobTokenReply>(
          '/blobs_v1.Blobs/begin_blob_write',
          ($0.BlobInfoObjectRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BlobTokenReply.fromBuffer(value));
  static final _$write_blob_chunk =
      $grpc.ClientMethod<$0.BlobTokenWithChunkRequest, $0.BlobTokenReply>(
          '/blobs_v1.Blobs/write_blob_chunk',
          ($0.BlobTokenWithChunkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BlobTokenReply.fromBuffer(value));
  static final _$end_blob_write =
      $grpc.ClientMethod<$0.BlobTokenWithChunkRequest, $0.BlobInfoObjectReply>(
          '/blobs_v1.Blobs/end_blob_write',
          ($0.BlobTokenWithChunkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BlobInfoObjectReply.fromBuffer(value));
  static final _$abort_blob_write =
      $grpc.ClientMethod<$0.BlobTokenRequest, $0.BlobEmptyReply>(
          '/blobs_v1.Blobs/abort_blob_write',
          ($0.BlobTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BlobEmptyReply.fromBuffer(value));
  static final _$begin_blob_read =
      $grpc.ClientMethod<$0.BlobIdRequest, $0.BlobInfoObjectReply>(
          '/blobs_v1.Blobs/begin_blob_read',
          ($0.BlobIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BlobInfoObjectReply.fromBuffer(value));
  static final _$read_blob_chunk =
      $grpc.ClientMethod<$0.BlobReadRequest, $0.BlobChunkReply>(
          '/blobs_v1.Blobs/read_blob_chunk',
          ($0.BlobReadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BlobChunkReply.fromBuffer(value));
  static final _$end_blob_read =
      $grpc.ClientMethod<$0.BlobIdRequest, $0.BlobEmptyReply>(
          '/blobs_v1.Blobs/end_blob_read',
          ($0.BlobIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BlobEmptyReply.fromBuffer(value));
  static final _$update_blob_info =
      $grpc.ClientMethod<$0.BlobInfoObjectRequest, $0.BlobInfoObjectReply>(
          '/blobs_v1.Blobs/update_blob_info',
          ($0.BlobInfoObjectRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BlobInfoObjectReply.fromBuffer(value));
  static final _$mark_blobs_completed =
      $grpc.ClientMethod<$0.BlobIdsRequest, $0.BlobEmptyReply>(
          '/blobs_v1.Blobs/mark_blobs_completed',
          ($0.BlobIdsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BlobEmptyReply.fromBuffer(value));
  static final _$delete_blob_by_id =
      $grpc.ClientMethod<$0.BlobIdRequest, $0.BlobEmptyReply>(
          '/blobs_v1.Blobs/delete_blob_by_id',
          ($0.BlobIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BlobEmptyReply.fromBuffer(value));
  static final _$delete_blobs_by_ids =
      $grpc.ClientMethod<$0.BlobIdsRequest, $0.BlobEmptyReply>(
          '/blobs_v1.Blobs/delete_blobs_by_ids',
          ($0.BlobIdsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BlobEmptyReply.fromBuffer(value));

  BlobsClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.BlobInfoPageReply> get_blobs_by_filter(
      $0.BlobInfoPageRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$get_blobs_by_filter, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobInfoObjectsReply> get_blobs_by_ids(
      $0.BlobIdsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$get_blobs_by_ids, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobInfoObjectReply> get_blob_by_id(
      $0.BlobIdRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$get_blob_by_id, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobUriReply> get_blob_uri_by_id(
      $0.BlobIdRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$get_blob_uri_by_id, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobTokenReply> begin_blob_write(
      $0.BlobInfoObjectRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$begin_blob_write, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobTokenReply> write_blob_chunk(
      $0.BlobTokenWithChunkRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$write_blob_chunk, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobInfoObjectReply> end_blob_write(
      $0.BlobTokenWithChunkRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$end_blob_write, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobEmptyReply> abort_blob_write(
      $0.BlobTokenRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$abort_blob_write, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobInfoObjectReply> begin_blob_read(
      $0.BlobIdRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$begin_blob_read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobChunkReply> read_blob_chunk(
      $0.BlobReadRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$read_blob_chunk, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobEmptyReply> end_blob_read(
      $0.BlobIdRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$end_blob_read, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobInfoObjectReply> update_blob_info(
      $0.BlobInfoObjectRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$update_blob_info, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobEmptyReply> mark_blobs_completed(
      $0.BlobIdsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$mark_blobs_completed, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobEmptyReply> delete_blob_by_id(
      $0.BlobIdRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$delete_blob_by_id, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BlobEmptyReply> delete_blobs_by_ids(
      $0.BlobIdsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$delete_blobs_by_ids, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class BlobsServiceBase extends $grpc.Service {
  $core.String get $name => 'blobs_v1.Blobs';

  BlobsServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.BlobInfoPageRequest, $0.BlobInfoPageReply>(
            'get_blobs_by_filter',
            get_blobs_by_filter_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.BlobInfoPageRequest.fromBuffer(value),
            ($0.BlobInfoPageReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobIdsRequest, $0.BlobInfoObjectsReply>(
        'get_blobs_by_ids',
        get_blobs_by_ids_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlobIdsRequest.fromBuffer(value),
        ($0.BlobInfoObjectsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobIdRequest, $0.BlobInfoObjectReply>(
        'get_blob_by_id',
        get_blob_by_id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlobIdRequest.fromBuffer(value),
        ($0.BlobInfoObjectReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobIdRequest, $0.BlobUriReply>(
        'get_blob_uri_by_id',
        get_blob_uri_by_id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlobIdRequest.fromBuffer(value),
        ($0.BlobUriReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobInfoObjectRequest, $0.BlobTokenReply>(
        'begin_blob_write',
        begin_blob_write_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.BlobInfoObjectRequest.fromBuffer(value),
        ($0.BlobTokenReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.BlobTokenWithChunkRequest, $0.BlobTokenReply>(
            'write_blob_chunk',
            write_blob_chunk_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.BlobTokenWithChunkRequest.fromBuffer(value),
            ($0.BlobTokenReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobTokenWithChunkRequest,
            $0.BlobInfoObjectReply>(
        'end_blob_write',
        end_blob_write_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.BlobTokenWithChunkRequest.fromBuffer(value),
        ($0.BlobInfoObjectReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobTokenRequest, $0.BlobEmptyReply>(
        'abort_blob_write',
        abort_blob_write_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlobTokenRequest.fromBuffer(value),
        ($0.BlobEmptyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobIdRequest, $0.BlobInfoObjectReply>(
        'begin_blob_read',
        begin_blob_read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlobIdRequest.fromBuffer(value),
        ($0.BlobInfoObjectReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobReadRequest, $0.BlobChunkReply>(
        'read_blob_chunk',
        read_blob_chunk_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlobReadRequest.fromBuffer(value),
        ($0.BlobChunkReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobIdRequest, $0.BlobEmptyReply>(
        'end_blob_read',
        end_blob_read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlobIdRequest.fromBuffer(value),
        ($0.BlobEmptyReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.BlobInfoObjectRequest, $0.BlobInfoObjectReply>(
            'update_blob_info',
            update_blob_info_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.BlobInfoObjectRequest.fromBuffer(value),
            ($0.BlobInfoObjectReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobIdsRequest, $0.BlobEmptyReply>(
        'mark_blobs_completed',
        mark_blobs_completed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlobIdsRequest.fromBuffer(value),
        ($0.BlobEmptyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobIdRequest, $0.BlobEmptyReply>(
        'delete_blob_by_id',
        delete_blob_by_id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlobIdRequest.fromBuffer(value),
        ($0.BlobEmptyReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlobIdsRequest, $0.BlobEmptyReply>(
        'delete_blobs_by_ids',
        delete_blobs_by_ids_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BlobIdsRequest.fromBuffer(value),
        ($0.BlobEmptyReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.BlobInfoPageReply> get_blobs_by_filter_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.BlobInfoPageRequest> request) async {
    return get_blobs_by_filter(call, await request);
  }

  $async.Future<$0.BlobInfoObjectsReply> get_blobs_by_ids_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlobIdsRequest> request) async {
    return get_blobs_by_ids(call, await request);
  }

  $async.Future<$0.BlobInfoObjectReply> get_blob_by_id_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlobIdRequest> request) async {
    return get_blob_by_id(call, await request);
  }

  $async.Future<$0.BlobUriReply> get_blob_uri_by_id_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlobIdRequest> request) async {
    return get_blob_uri_by_id(call, await request);
  }

  $async.Future<$0.BlobTokenReply> begin_blob_write_Pre($grpc.ServiceCall call,
      $async.Future<$0.BlobInfoObjectRequest> request) async {
    return begin_blob_write(call, await request);
  }

  $async.Future<$0.BlobTokenReply> write_blob_chunk_Pre($grpc.ServiceCall call,
      $async.Future<$0.BlobTokenWithChunkRequest> request) async {
    return write_blob_chunk(call, await request);
  }

  $async.Future<$0.BlobInfoObjectReply> end_blob_write_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.BlobTokenWithChunkRequest> request) async {
    return end_blob_write(call, await request);
  }

  $async.Future<$0.BlobEmptyReply> abort_blob_write_Pre($grpc.ServiceCall call,
      $async.Future<$0.BlobTokenRequest> request) async {
    return abort_blob_write(call, await request);
  }

  $async.Future<$0.BlobInfoObjectReply> begin_blob_read_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlobIdRequest> request) async {
    return begin_blob_read(call, await request);
  }

  $async.Future<$0.BlobChunkReply> read_blob_chunk_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlobReadRequest> request) async {
    return read_blob_chunk(call, await request);
  }

  $async.Future<$0.BlobEmptyReply> end_blob_read_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlobIdRequest> request) async {
    return end_blob_read(call, await request);
  }

  $async.Future<$0.BlobInfoObjectReply> update_blob_info_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.BlobInfoObjectRequest> request) async {
    return update_blob_info(call, await request);
  }

  $async.Future<$0.BlobEmptyReply> mark_blobs_completed_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlobIdsRequest> request) async {
    return mark_blobs_completed(call, await request);
  }

  $async.Future<$0.BlobEmptyReply> delete_blob_by_id_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlobIdRequest> request) async {
    return delete_blob_by_id(call, await request);
  }

  $async.Future<$0.BlobEmptyReply> delete_blobs_by_ids_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlobIdsRequest> request) async {
    return delete_blobs_by_ids(call, await request);
  }

  $async.Future<$0.BlobInfoPageReply> get_blobs_by_filter(
      $grpc.ServiceCall call, $0.BlobInfoPageRequest request);
  $async.Future<$0.BlobInfoObjectsReply> get_blobs_by_ids(
      $grpc.ServiceCall call, $0.BlobIdsRequest request);
  $async.Future<$0.BlobInfoObjectReply> get_blob_by_id(
      $grpc.ServiceCall call, $0.BlobIdRequest request);
  $async.Future<$0.BlobUriReply> get_blob_uri_by_id(
      $grpc.ServiceCall call, $0.BlobIdRequest request);
  $async.Future<$0.BlobTokenReply> begin_blob_write(
      $grpc.ServiceCall call, $0.BlobInfoObjectRequest request);
  $async.Future<$0.BlobTokenReply> write_blob_chunk(
      $grpc.ServiceCall call, $0.BlobTokenWithChunkRequest request);
  $async.Future<$0.BlobInfoObjectReply> end_blob_write(
      $grpc.ServiceCall call, $0.BlobTokenWithChunkRequest request);
  $async.Future<$0.BlobEmptyReply> abort_blob_write(
      $grpc.ServiceCall call, $0.BlobTokenRequest request);
  $async.Future<$0.BlobInfoObjectReply> begin_blob_read(
      $grpc.ServiceCall call, $0.BlobIdRequest request);
  $async.Future<$0.BlobChunkReply> read_blob_chunk(
      $grpc.ServiceCall call, $0.BlobReadRequest request);
  $async.Future<$0.BlobEmptyReply> end_blob_read(
      $grpc.ServiceCall call, $0.BlobIdRequest request);
  $async.Future<$0.BlobInfoObjectReply> update_blob_info(
      $grpc.ServiceCall call, $0.BlobInfoObjectRequest request);
  $async.Future<$0.BlobEmptyReply> mark_blobs_completed(
      $grpc.ServiceCall call, $0.BlobIdsRequest request);
  $async.Future<$0.BlobEmptyReply> delete_blob_by_id(
      $grpc.ServiceCall call, $0.BlobIdRequest request);
  $async.Future<$0.BlobEmptyReply> delete_blobs_by_ids(
      $grpc.ServiceCall call, $0.BlobIdsRequest request);
}
