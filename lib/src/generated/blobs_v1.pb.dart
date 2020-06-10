///
//  Generated code. Do not modify.
//  source: blobs_v1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ErrorDescription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ErrorDescription', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOS(1, 'type')
    ..aOS(2, 'category')
    ..aOS(3, 'code')
    ..aOS(4, 'correlationId')
    ..aOS(5, 'status')
    ..aOS(6, 'message')
    ..aOS(7, 'cause')
    ..aOS(8, 'stackTrace')
    ..m<$core.String, $core.String>(9, 'details', entryClassName: 'ErrorDescription.DetailsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('blobs_v1'))
    ..hasRequiredFields = false
  ;

  ErrorDescription._() : super();
  factory ErrorDescription() => create();
  factory ErrorDescription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorDescription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ErrorDescription clone() => ErrorDescription()..mergeFromMessage(this);
  ErrorDescription copyWith(void Function(ErrorDescription) updates) => super.copyWith((message) => updates(message as ErrorDescription));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ErrorDescription create() => ErrorDescription._();
  ErrorDescription createEmptyInstance() => create();
  static $pb.PbList<ErrorDescription> createRepeated() => $pb.PbList<ErrorDescription>();
  @$core.pragma('dart2js:noInline')
  static ErrorDescription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorDescription>(create);
  static ErrorDescription _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get category => $_getSZ(1);
  @$pb.TagNumber(2)
  set category($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get correlationId => $_getSZ(3);
  @$pb.TagNumber(4)
  set correlationId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCorrelationId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCorrelationId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(5)
  set status($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get message => $_getSZ(5);
  @$pb.TagNumber(6)
  set message($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearMessage() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get cause => $_getSZ(6);
  @$pb.TagNumber(7)
  set cause($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCause() => $_has(6);
  @$pb.TagNumber(7)
  void clearCause() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get stackTrace => $_getSZ(7);
  @$pb.TagNumber(8)
  set stackTrace($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStackTrace() => $_has(7);
  @$pb.TagNumber(8)
  void clearStackTrace() => clearField(8);

  @$pb.TagNumber(9)
  $core.Map<$core.String, $core.String> get details => $_getMap(8);
}

class PagingParams extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PagingParams', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aInt64(1, 'skip')
    ..a<$core.int>(2, 'take', $pb.PbFieldType.O3)
    ..aOB(3, 'total')
    ..hasRequiredFields = false
  ;

  PagingParams._() : super();
  factory PagingParams() => create();
  factory PagingParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PagingParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PagingParams clone() => PagingParams()..mergeFromMessage(this);
  PagingParams copyWith(void Function(PagingParams) updates) => super.copyWith((message) => updates(message as PagingParams));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PagingParams create() => PagingParams._();
  PagingParams createEmptyInstance() => create();
  static $pb.PbList<PagingParams> createRepeated() => $pb.PbList<PagingParams>();
  @$core.pragma('dart2js:noInline')
  static PagingParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PagingParams>(create);
  static PagingParams _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get skip => $_getI64(0);
  @$pb.TagNumber(1)
  set skip($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkip() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkip() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get take => $_getIZ(1);
  @$pb.TagNumber(2)
  set take($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTake() => $_has(1);
  @$pb.TagNumber(2)
  void clearTake() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get total => $_getBF(2);
  @$pb.TagNumber(3)
  set total($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotal() => clearField(3);
}

class BlobInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobInfo', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'group')
    ..aOS(3, 'name')
    ..aInt64(4, 'size')
    ..aOS(5, 'contentType')
    ..aOS(6, 'createTime')
    ..aOS(7, 'expireTime')
    ..aOB(8, 'completed')
    ..hasRequiredFields = false
  ;

  BlobInfo._() : super();
  factory BlobInfo() => create();
  factory BlobInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobInfo clone() => BlobInfo()..mergeFromMessage(this);
  BlobInfo copyWith(void Function(BlobInfo) updates) => super.copyWith((message) => updates(message as BlobInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobInfo create() => BlobInfo._();
  BlobInfo createEmptyInstance() => create();
  static $pb.PbList<BlobInfo> createRepeated() => $pb.PbList<BlobInfo>();
  @$core.pragma('dart2js:noInline')
  static BlobInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobInfo>(create);
  static BlobInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get group => $_getSZ(1);
  @$pb.TagNumber(2)
  set group($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroup() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get size => $_getI64(3);
  @$pb.TagNumber(4)
  set size($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get contentType => $_getSZ(4);
  @$pb.TagNumber(5)
  set contentType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContentType() => $_has(4);
  @$pb.TagNumber(5)
  void clearContentType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get createTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set createTime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreateTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get expireTime => $_getSZ(6);
  @$pb.TagNumber(7)
  set expireTime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExpireTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearExpireTime() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get completed => $_getBF(7);
  @$pb.TagNumber(8)
  set completed($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCompleted() => $_has(7);
  @$pb.TagNumber(8)
  void clearCompleted() => clearField(8);
}

class BlobInfoPage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobInfoPage', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aInt64(1, 'total')
    ..pc<BlobInfo>(2, 'data', $pb.PbFieldType.PM, subBuilder: BlobInfo.create)
    ..hasRequiredFields = false
  ;

  BlobInfoPage._() : super();
  factory BlobInfoPage() => create();
  factory BlobInfoPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobInfoPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobInfoPage clone() => BlobInfoPage()..mergeFromMessage(this);
  BlobInfoPage copyWith(void Function(BlobInfoPage) updates) => super.copyWith((message) => updates(message as BlobInfoPage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobInfoPage create() => BlobInfoPage._();
  BlobInfoPage createEmptyInstance() => create();
  static $pb.PbList<BlobInfoPage> createRepeated() => $pb.PbList<BlobInfoPage>();
  @$core.pragma('dart2js:noInline')
  static BlobInfoPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobInfoPage>(create);
  static BlobInfoPage _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get total => $_getI64(0);
  @$pb.TagNumber(1)
  set total($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<BlobInfo> get data => $_getList(1);
}

class BlobInfoPageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobInfoPageRequest', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..m<$core.String, $core.String>(2, 'filter', entryClassName: 'BlobInfoPageRequest.FilterEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('blobs_v1'))
    ..aOM<PagingParams>(3, 'paging', subBuilder: PagingParams.create)
    ..hasRequiredFields = false
  ;

  BlobInfoPageRequest._() : super();
  factory BlobInfoPageRequest() => create();
  factory BlobInfoPageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobInfoPageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobInfoPageRequest clone() => BlobInfoPageRequest()..mergeFromMessage(this);
  BlobInfoPageRequest copyWith(void Function(BlobInfoPageRequest) updates) => super.copyWith((message) => updates(message as BlobInfoPageRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobInfoPageRequest create() => BlobInfoPageRequest._();
  BlobInfoPageRequest createEmptyInstance() => create();
  static $pb.PbList<BlobInfoPageRequest> createRepeated() => $pb.PbList<BlobInfoPageRequest>();
  @$core.pragma('dart2js:noInline')
  static BlobInfoPageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobInfoPageRequest>(create);
  static BlobInfoPageRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get filter => $_getMap(1);

  @$pb.TagNumber(3)
  PagingParams get paging => $_getN(2);
  @$pb.TagNumber(3)
  set paging(PagingParams v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPaging() => $_has(2);
  @$pb.TagNumber(3)
  void clearPaging() => clearField(3);
  @$pb.TagNumber(3)
  PagingParams ensurePaging() => $_ensure(2);
}

class BlobInfoPageReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobInfoPageReply', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, 'error', subBuilder: ErrorDescription.create)
    ..aOM<BlobInfoPage>(2, 'page', subBuilder: BlobInfoPage.create)
    ..hasRequiredFields = false
  ;

  BlobInfoPageReply._() : super();
  factory BlobInfoPageReply() => create();
  factory BlobInfoPageReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobInfoPageReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobInfoPageReply clone() => BlobInfoPageReply()..mergeFromMessage(this);
  BlobInfoPageReply copyWith(void Function(BlobInfoPageReply) updates) => super.copyWith((message) => updates(message as BlobInfoPageReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobInfoPageReply create() => BlobInfoPageReply._();
  BlobInfoPageReply createEmptyInstance() => create();
  static $pb.PbList<BlobInfoPageReply> createRepeated() => $pb.PbList<BlobInfoPageReply>();
  @$core.pragma('dart2js:noInline')
  static BlobInfoPageReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobInfoPageReply>(create);
  static BlobInfoPageReply _defaultInstance;

  @$pb.TagNumber(1)
  ErrorDescription get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorDescription v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorDescription ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  BlobInfoPage get page => $_getN(1);
  @$pb.TagNumber(2)
  set page(BlobInfoPage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);
  @$pb.TagNumber(2)
  BlobInfoPage ensurePage() => $_ensure(1);
}

class BlobIdsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobIdsRequest', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..pPS(2, 'blobIds')
    ..hasRequiredFields = false
  ;

  BlobIdsRequest._() : super();
  factory BlobIdsRequest() => create();
  factory BlobIdsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobIdsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobIdsRequest clone() => BlobIdsRequest()..mergeFromMessage(this);
  BlobIdsRequest copyWith(void Function(BlobIdsRequest) updates) => super.copyWith((message) => updates(message as BlobIdsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobIdsRequest create() => BlobIdsRequest._();
  BlobIdsRequest createEmptyInstance() => create();
  static $pb.PbList<BlobIdsRequest> createRepeated() => $pb.PbList<BlobIdsRequest>();
  @$core.pragma('dart2js:noInline')
  static BlobIdsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobIdsRequest>(create);
  static BlobIdsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get blobIds => $_getList(1);
}

class BlobIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobIdRequest', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOS(2, 'blobId')
    ..hasRequiredFields = false
  ;

  BlobIdRequest._() : super();
  factory BlobIdRequest() => create();
  factory BlobIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobIdRequest clone() => BlobIdRequest()..mergeFromMessage(this);
  BlobIdRequest copyWith(void Function(BlobIdRequest) updates) => super.copyWith((message) => updates(message as BlobIdRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobIdRequest create() => BlobIdRequest._();
  BlobIdRequest createEmptyInstance() => create();
  static $pb.PbList<BlobIdRequest> createRepeated() => $pb.PbList<BlobIdRequest>();
  @$core.pragma('dart2js:noInline')
  static BlobIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobIdRequest>(create);
  static BlobIdRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get blobId => $_getSZ(1);
  @$pb.TagNumber(2)
  set blobId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlobId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlobId() => clearField(2);
}

class BlobInfoObjectRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobInfoObjectRequest', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOM<BlobInfo>(2, 'blob', subBuilder: BlobInfo.create)
    ..hasRequiredFields = false
  ;

  BlobInfoObjectRequest._() : super();
  factory BlobInfoObjectRequest() => create();
  factory BlobInfoObjectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobInfoObjectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobInfoObjectRequest clone() => BlobInfoObjectRequest()..mergeFromMessage(this);
  BlobInfoObjectRequest copyWith(void Function(BlobInfoObjectRequest) updates) => super.copyWith((message) => updates(message as BlobInfoObjectRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobInfoObjectRequest create() => BlobInfoObjectRequest._();
  BlobInfoObjectRequest createEmptyInstance() => create();
  static $pb.PbList<BlobInfoObjectRequest> createRepeated() => $pb.PbList<BlobInfoObjectRequest>();
  @$core.pragma('dart2js:noInline')
  static BlobInfoObjectRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobInfoObjectRequest>(create);
  static BlobInfoObjectRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  BlobInfo get blob => $_getN(1);
  @$pb.TagNumber(2)
  set blob(BlobInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlob() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlob() => clearField(2);
  @$pb.TagNumber(2)
  BlobInfo ensureBlob() => $_ensure(1);
}

class BlobInfoObjectsReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobInfoObjectsReply', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, 'error', subBuilder: ErrorDescription.create)
    ..pc<BlobInfo>(2, 'blobs', $pb.PbFieldType.PM, subBuilder: BlobInfo.create)
    ..hasRequiredFields = false
  ;

  BlobInfoObjectsReply._() : super();
  factory BlobInfoObjectsReply() => create();
  factory BlobInfoObjectsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobInfoObjectsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobInfoObjectsReply clone() => BlobInfoObjectsReply()..mergeFromMessage(this);
  BlobInfoObjectsReply copyWith(void Function(BlobInfoObjectsReply) updates) => super.copyWith((message) => updates(message as BlobInfoObjectsReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobInfoObjectsReply create() => BlobInfoObjectsReply._();
  BlobInfoObjectsReply createEmptyInstance() => create();
  static $pb.PbList<BlobInfoObjectsReply> createRepeated() => $pb.PbList<BlobInfoObjectsReply>();
  @$core.pragma('dart2js:noInline')
  static BlobInfoObjectsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobInfoObjectsReply>(create);
  static BlobInfoObjectsReply _defaultInstance;

  @$pb.TagNumber(1)
  ErrorDescription get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorDescription v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorDescription ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<BlobInfo> get blobs => $_getList(1);
}

class BlobInfoObjectReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobInfoObjectReply', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, 'error', subBuilder: ErrorDescription.create)
    ..aOM<BlobInfo>(2, 'blob', subBuilder: BlobInfo.create)
    ..hasRequiredFields = false
  ;

  BlobInfoObjectReply._() : super();
  factory BlobInfoObjectReply() => create();
  factory BlobInfoObjectReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobInfoObjectReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobInfoObjectReply clone() => BlobInfoObjectReply()..mergeFromMessage(this);
  BlobInfoObjectReply copyWith(void Function(BlobInfoObjectReply) updates) => super.copyWith((message) => updates(message as BlobInfoObjectReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobInfoObjectReply create() => BlobInfoObjectReply._();
  BlobInfoObjectReply createEmptyInstance() => create();
  static $pb.PbList<BlobInfoObjectReply> createRepeated() => $pb.PbList<BlobInfoObjectReply>();
  @$core.pragma('dart2js:noInline')
  static BlobInfoObjectReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobInfoObjectReply>(create);
  static BlobInfoObjectReply _defaultInstance;

  @$pb.TagNumber(1)
  ErrorDescription get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorDescription v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorDescription ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  BlobInfo get blob => $_getN(1);
  @$pb.TagNumber(2)
  set blob(BlobInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlob() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlob() => clearField(2);
  @$pb.TagNumber(2)
  BlobInfo ensureBlob() => $_ensure(1);
}

class BlobUriReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobUriReply', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, 'error', subBuilder: ErrorDescription.create)
    ..aOS(2, 'uri')
    ..hasRequiredFields = false
  ;

  BlobUriReply._() : super();
  factory BlobUriReply() => create();
  factory BlobUriReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobUriReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobUriReply clone() => BlobUriReply()..mergeFromMessage(this);
  BlobUriReply copyWith(void Function(BlobUriReply) updates) => super.copyWith((message) => updates(message as BlobUriReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobUriReply create() => BlobUriReply._();
  BlobUriReply createEmptyInstance() => create();
  static $pb.PbList<BlobUriReply> createRepeated() => $pb.PbList<BlobUriReply>();
  @$core.pragma('dart2js:noInline')
  static BlobUriReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobUriReply>(create);
  static BlobUriReply _defaultInstance;

  @$pb.TagNumber(1)
  ErrorDescription get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorDescription v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorDescription ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);
}

class BlobTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobTokenRequest', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  BlobTokenRequest._() : super();
  factory BlobTokenRequest() => create();
  factory BlobTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobTokenRequest clone() => BlobTokenRequest()..mergeFromMessage(this);
  BlobTokenRequest copyWith(void Function(BlobTokenRequest) updates) => super.copyWith((message) => updates(message as BlobTokenRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobTokenRequest create() => BlobTokenRequest._();
  BlobTokenRequest createEmptyInstance() => create();
  static $pb.PbList<BlobTokenRequest> createRepeated() => $pb.PbList<BlobTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static BlobTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobTokenRequest>(create);
  static BlobTokenRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class BlobTokenWithChunkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobTokenWithChunkRequest', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOS(2, 'token')
    ..aOS(3, 'chunk')
    ..hasRequiredFields = false
  ;

  BlobTokenWithChunkRequest._() : super();
  factory BlobTokenWithChunkRequest() => create();
  factory BlobTokenWithChunkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobTokenWithChunkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobTokenWithChunkRequest clone() => BlobTokenWithChunkRequest()..mergeFromMessage(this);
  BlobTokenWithChunkRequest copyWith(void Function(BlobTokenWithChunkRequest) updates) => super.copyWith((message) => updates(message as BlobTokenWithChunkRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobTokenWithChunkRequest create() => BlobTokenWithChunkRequest._();
  BlobTokenWithChunkRequest createEmptyInstance() => create();
  static $pb.PbList<BlobTokenWithChunkRequest> createRepeated() => $pb.PbList<BlobTokenWithChunkRequest>();
  @$core.pragma('dart2js:noInline')
  static BlobTokenWithChunkRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobTokenWithChunkRequest>(create);
  static BlobTokenWithChunkRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get chunk => $_getSZ(2);
  @$pb.TagNumber(3)
  set chunk($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChunk() => $_has(2);
  @$pb.TagNumber(3)
  void clearChunk() => clearField(3);
}

class BlobTokenReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobTokenReply', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, 'error', subBuilder: ErrorDescription.create)
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  BlobTokenReply._() : super();
  factory BlobTokenReply() => create();
  factory BlobTokenReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobTokenReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobTokenReply clone() => BlobTokenReply()..mergeFromMessage(this);
  BlobTokenReply copyWith(void Function(BlobTokenReply) updates) => super.copyWith((message) => updates(message as BlobTokenReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobTokenReply create() => BlobTokenReply._();
  BlobTokenReply createEmptyInstance() => create();
  static $pb.PbList<BlobTokenReply> createRepeated() => $pb.PbList<BlobTokenReply>();
  @$core.pragma('dart2js:noInline')
  static BlobTokenReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobTokenReply>(create);
  static BlobTokenReply _defaultInstance;

  @$pb.TagNumber(1)
  ErrorDescription get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorDescription v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorDescription ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class BlobEmptyReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobEmptyReply', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, 'error', subBuilder: ErrorDescription.create)
    ..hasRequiredFields = false
  ;

  BlobEmptyReply._() : super();
  factory BlobEmptyReply() => create();
  factory BlobEmptyReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobEmptyReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobEmptyReply clone() => BlobEmptyReply()..mergeFromMessage(this);
  BlobEmptyReply copyWith(void Function(BlobEmptyReply) updates) => super.copyWith((message) => updates(message as BlobEmptyReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobEmptyReply create() => BlobEmptyReply._();
  BlobEmptyReply createEmptyInstance() => create();
  static $pb.PbList<BlobEmptyReply> createRepeated() => $pb.PbList<BlobEmptyReply>();
  @$core.pragma('dart2js:noInline')
  static BlobEmptyReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobEmptyReply>(create);
  static BlobEmptyReply _defaultInstance;

  @$pb.TagNumber(1)
  ErrorDescription get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorDescription v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorDescription ensureError() => $_ensure(0);
}

class BlobReadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobReadRequest', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOS(2, 'blobId')
    ..aInt64(3, 'skip')
    ..aInt64(4, 'take')
    ..hasRequiredFields = false
  ;

  BlobReadRequest._() : super();
  factory BlobReadRequest() => create();
  factory BlobReadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobReadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobReadRequest clone() => BlobReadRequest()..mergeFromMessage(this);
  BlobReadRequest copyWith(void Function(BlobReadRequest) updates) => super.copyWith((message) => updates(message as BlobReadRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobReadRequest create() => BlobReadRequest._();
  BlobReadRequest createEmptyInstance() => create();
  static $pb.PbList<BlobReadRequest> createRepeated() => $pb.PbList<BlobReadRequest>();
  @$core.pragma('dart2js:noInline')
  static BlobReadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobReadRequest>(create);
  static BlobReadRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get blobId => $_getSZ(1);
  @$pb.TagNumber(2)
  set blobId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlobId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlobId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get skip => $_getI64(2);
  @$pb.TagNumber(3)
  set skip($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSkip() => $_has(2);
  @$pb.TagNumber(3)
  void clearSkip() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get take => $_getI64(3);
  @$pb.TagNumber(4)
  set take($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTake() => $_has(3);
  @$pb.TagNumber(4)
  void clearTake() => clearField(4);
}

class BlobChunkReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BlobChunkReply', package: const $pb.PackageName('blobs_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, 'error', subBuilder: ErrorDescription.create)
    ..aOS(2, 'chunk')
    ..hasRequiredFields = false
  ;

  BlobChunkReply._() : super();
  factory BlobChunkReply() => create();
  factory BlobChunkReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlobChunkReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BlobChunkReply clone() => BlobChunkReply()..mergeFromMessage(this);
  BlobChunkReply copyWith(void Function(BlobChunkReply) updates) => super.copyWith((message) => updates(message as BlobChunkReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlobChunkReply create() => BlobChunkReply._();
  BlobChunkReply createEmptyInstance() => create();
  static $pb.PbList<BlobChunkReply> createRepeated() => $pb.PbList<BlobChunkReply>();
  @$core.pragma('dart2js:noInline')
  static BlobChunkReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobChunkReply>(create);
  static BlobChunkReply _defaultInstance;

  @$pb.TagNumber(1)
  ErrorDescription get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorDescription v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorDescription ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get chunk => $_getSZ(1);
  @$pb.TagNumber(2)
  set chunk($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChunk() => $_has(1);
  @$pb.TagNumber(2)
  void clearChunk() => clearField(2);
}

