import 'package:pip_services3_commons/pip_services3_commons.dart';

class BlobInfoV1Schema extends ObjectSchema {
  BlobInfoV1Schema() : super() {
    /* Identification */
    withOptionalProperty('id', TypeCode.String);
    withOptionalProperty('group', TypeCode.String);
    withRequiredProperty('name', TypeCode.String);

    /* Content */
    withOptionalProperty('size', TypeCode.Long);
    withOptionalProperty('content_type', TypeCode.String);
    withOptionalProperty('create_time', null); //TypeCode.DateTime);
    withOptionalProperty('expire_time', null); //TypeCode.DateTime);
    withOptionalProperty('completed', TypeCode.Boolean);

    /* Custom fields */
    withOptionalProperty('custom_hdr', null);
    withOptionalProperty('custom_dat', null);
  }
}
