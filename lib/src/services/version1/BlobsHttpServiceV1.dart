import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_rpc/pip_services3_rpc.dart';

class BlobsHttpServiceV1 extends CommandableHttpService {
  BlobsHttpServiceV1() : super('v1/blobs') {
    dependencyResolver.put('controller',
        Descriptor('pip-services-blobs', 'controller', 'default', '*', '1.0'));
  }
}
