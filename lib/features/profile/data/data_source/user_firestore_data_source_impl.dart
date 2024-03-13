import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto_user/features/profile/data/data_source/user_firestore_data_source.dart';
import 'package:resto_user/features/profile/data/model/user_model.dart';

class UserFirestoreDataSourceImpl implements UserFirestoreDataSource {
  final collection = FirebaseFirestore.instance
      .collection('users')
      .withConverter(
          fromFirestore: UserModel.fromFirestore,
          toFirestore: (model, _) => model.toFirestore());

  @override
  Stream<UserModel> getUserData(String uid) async* {
    final userStream = collection.doc(uid).snapshots();
    await for (final userData in userStream) {
      yield userData.data()!;
    }
  }

  @override
  Future<void> setUserData(UserModel userModel, String uid) async {
    collection.doc(uid).set(userModel);
  }
}