import 'package:mongo_dart/mongo_dart.dart';

void main(List<String> arguments) async
 {
  var db = Db("mongodb://admin:QUPGcQRMPuHqXjLNe5sUY7kY@bulbaman.me:27017/admin");

  await db.open();
  var collection = db.collection('test');

  //var result = await collection.find().tolist();
  //print(result)

  await collection.insertOne({'login' : "Lotus", 'name' : "Leonid Kashirin"});
  await collection.updateOne({'name' : "Leonid Kashirin"}, modify.set('name', 'Leonid'));
  //await collection.deleteOne({'name' : "Leonid Kashirin"});

  await db.close();
}
