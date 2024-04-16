import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:resto_user/features/authentication/data/datasource/details_add_firestore_datasource.dart';
import 'package:resto_user/features/authentication/data/model/details_add_model.dart';

class DetailsAddFirestoreDatasourceImpl
    implements DetailsAddFirestoreDatasource {
  final collection = FirebaseFirestore.instance
      .collection("users")
      .withConverter(
          fromFirestore: DetailsAddModel.fromFirestore,
          toFirestore: (model, _) => model.toFirestore());

  @override
  Future<void> add(DetailsAddModel model) async {
    await collection.doc().set(model);
  }
}

final FirebaseAuth auth = FirebaseAuth.instance;
final User? user = auth.currentUser;
final myUid = user!.uid;
