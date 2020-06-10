// import { Descriptor } from 'package:pip_services3_commons-node';
// import { CommandableLambdaFunction } from 'package:pip_services3_aws-node';

// import { BlobsServiceFactory } from '../build/BlobsServiceFactory';

// export class BlobsLambdaFunction extends CommandableLambdaFunction {
//     public constructor() {
//         super("blobs", "Blobs function");
//         this._dependencyResolver.put('controller', new Descriptor('pip-services-blobs', 'controller', 'default', '*', '*'));
//         this._factories.add(new BlobsServiceFactory());
//     }
// }

// export const handler = new BlobsLambdaFunction().getHandler();