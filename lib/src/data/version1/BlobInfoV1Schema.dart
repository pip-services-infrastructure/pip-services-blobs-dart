// import { ObjectSchema } from 'package:pip_services3_commons-node';
// import { TypeCode } from 'package:pip_services3_commons-node';

// export class BlobInfoV1Schema extends ObjectSchema {
//     public constructor() {
//         super();

//         /* Identification */
//         this.withOptionalProperty('id', TypeCode.String);
//         this.withOptionalProperty('group', TypeCode.String);
//         this.withRequiredProperty('name', TypeCode.String);

//         /* Content */
//         this.withOptionalProperty('size', TypeCode.Long);
//         this.withOptionalProperty('content_type', TypeCode.String);
//         this.withOptionalProperty('create_time', null); //TypeCode.DateTime);
//         this.withOptionalProperty('expire_time', null); //TypeCode.DateTime);
//         this.withOptionalProperty('completed', TypeCode.Boolean);

//         /* Custom fields */
//         this.withOptionalProperty('custom_hdr', null);
//         this.withOptionalProperty('custom_dat', null);
//     }
// }
