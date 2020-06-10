import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_grpc/pip_services3_grpc.dart';

class BlobsCommandableGrpcServiceV1 extends CommandableGrpcService {
  BlobsCommandableGrpcServiceV1() : super('v1/blobs') {
    dependencyResolver.put('controller',
        Descriptor('pip-services-blobs', 'controller', 'default', '*', '1.0'));
  }
}
