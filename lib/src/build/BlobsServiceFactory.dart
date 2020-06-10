// import 'package:pip_services3_components/pip_services3_components.dart';
// import 'package:pip_services3_commons/pip_services3_commons.dart';

// import '../persistence/BlobsMongoDbPersistence.dart';
// import '../persistence/BlobsFilePersistence.dart';
// import '../persistence/BlobsMemoryPersistence.dart';
// import '../persistence/BlobsS3Persistence.dart';

// import '../logic/BlobsController.dart';
// import '../services/version1/BlobsHttpServiceV1.dart';
// import '../services/version1/BlobsCommandableGrpcServiceV1.dart';
// import '../services/version1/BlobsGrpcServiceV1.dart';

// class BlobsServiceFactory extends Factory {
//   static final descriptor =
//       Descriptor('pip-services-blobs', 'factory', 'default', 'default', '1.0');

//   static final MemoryPersistenceDescriptor =
//       Descriptor('pip-services-blobs', 'persistence', 'memory', '*', '1.0');
//   static final FilePersistenceDescriptor =
//       Descriptor('pip-services-blobs', 'persistence', 'file', '*', '1.0');
//   static final MongoDbPersistenceDescriptor =
//       Descriptor('pip-services-blobs', 'persistence', 'mongodb', '*', '1.0');
//   static final S3PersistenceDescriptor =
//       Descriptor('pip-services-blobs', 'persistence', 's3', '*', '1.0');

//   static final ControllerDescriptor =
//       Descriptor('pip-services-blobs', 'controller', 'default', '*', '1.0');
//   static final HttpServiceDescriptor =
//       Descriptor('pip-services-blobs', 'service', 'http', '*', '1.0');
//   static final CommandableGrpcServiceDescriptor = Descriptor(
//       'pip-services-blobs', 'service', 'commandable-grpc', '*', '1.0');
//   static final GrpcServiceDescriptor =
//       Descriptor('pip-services-blobs', 'service', 'grpc', '*', '1.0');

//   BlobsServiceFactory() : super() {
//     registerAsType(BlobsServiceFactory.MemoryPersistenceDescriptor,
//         BlobsMemoryPersistence);
//     registerAsType(
//         BlobsServiceFactory.FilePersistenceDescriptor, BlobsFilePersistence);
//     registerAsType(BlobsServiceFactory.MongoDbPersistenceDescriptor,
//         BlobsMongoDbPersistence);
//     registerAsType(
//         BlobsServiceFactory.S3PersistenceDescriptor, BlobsMongoDbPersistence);

//     registerAsType(BlobsServiceFactory.ControllerDescriptor, BlobsController);
//     registerAsType(
//         BlobsServiceFactory.HttpServiceDescriptor, BlobsHttpServiceV1);
//     registerAsType(BlobsServiceFactory.CommandableGrpcServiceDescriptor,
//         BlobsCommandableGrpcServiceV1);
//     registerAsType(
//         BlobsServiceFactory.GrpcServiceDescriptor, BlobsGrpcServiceV1);
//   }
// }
