// let process = require('process');

// import { ConfigParams } from 'package:pip_services3_commons-node';

// import { BlobsMongoDbPersistence } from '../../src/persistence/BlobsMongoDbPersistence';
// import { BlobsPersistenceFixture } from './BlobsPersistenceFixture';

// suite('BlobsMongoDbPersistence', ()=> {
//     let persistence: BlobsMongoDbPersistence;
//     let fixture: BlobsPersistenceFixture;

//     setup((done) => {
//         var MONGO_DB = process.env["MONGO_DB"] || "test";
//         var MONGO_COLLECTION = process.env["MONGO_COLLECTION"] || "blobs";
//         var MONGO_SERVICE_HOST = process.env["MONGO_SERVICE_HOST"] || "localhost";
//         var MONGO_SERVICE_PORT = process.env["MONGO_SERVICE_PORT"] || "27017";
//         var MONGO_SERVICE_URI = process.env["MONGO_SERVICE_URI"];

//         var dbConfig = ConfigParams.fromTuples(
//             "collection", MONGO_COLLECTION,
//             "connection.database", MONGO_DB,
//             "connection.host", MONGO_SERVICE_HOST,
//             "connection.port", MONGO_SERVICE_PORT,
//             "connection.uri", MONGO_SERVICE_URI
//         );

//         persistence = new BlobsMongoDbPersistence();
//         persistence.configure(dbConfig);

//         fixture = new BlobsPersistenceFixture(persistence);

//         persistence.open(null, (err: any) => {
//             if (err == null) {
//                 persistence.clear(null, (err) => {
//                     done(err);
//                 });
//             } else {
//                 done(err);
//             }
//         });
//     });
    
//     teardown((done) => {
//         persistence.close(null, done);
//     });

//     test('CRUD Operations', (done) => {
//         fixture.testCrudOperations(done);
//     });

//     test('Read and Write', (done) => {
//         fixture.testReadAndWrite(done);
//     });

//     test('Write in One Chunk', (done) => {
//         fixture.testWriteInOneChunk(done);
//     });

//     test('Get Uri for missing blob', (done) => {
//         fixture.testGetUriForMissingBlob(done);
//     });

//     test('Override blob', (done) => {
//         fixture.testOverrideBlob(done);
//     });

// });