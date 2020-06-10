import 'dart:async';
import 'package:pip_services3_commons/pip_services3_commons.dart';
import '../data/version1/BlobInfoV1.dart';

abstract class IBlobsController {
  Future<DataPage<BlobInfoV1>> getBlobsByFilter(
      String correlationId, FilterParams filter, PagingParams paging);
  Future<List<BlobInfoV1>> getBlobsByIds(
      String correlationId, List<String> blobIds);
  Future<BlobInfoV1> getBlobById(String correlationId, String blobId);
  Future<String> getBlobUriById(String correlationId, String blobId); // uri
  Future<String> beginBlobWrite(String correlationId, BlobInfoV1 blob); // token
  Future<String> writeBlobChunk(
      String correlationId, String token, String chunk); // token
  Future<BlobInfoV1> endBlobWrite(
      String correlationId, String token, String chunk);
  Future abortBlobWrite(String correlationId, String token);
  Future<BlobInfoV1> beginBlobRead(String correlationId, String blobId);
  Future<String> readBlobChunk(
      String correlationId, String blobId, int skip, int take);
  Future endBlobRead(String correlationId, String blobId);
  Future<BlobInfoV1> updateBlobInfo(String correlationId, BlobInfoV1 blob);
  Future markBlobsCompleted(String correlationId, List<String> blobIds);
  Future deleteBlobById(String correlationId, String blobId);
  Future deleteBlobsByIds(String correlationId, List<String> blobIds);
}
