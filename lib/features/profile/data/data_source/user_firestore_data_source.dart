import 'package:resto_user/features/profile/data/model/user_model.dart';

abstract class UserFirestoreDataSource {
  Future<void> setUserData(UserModel userModel,String uid);
  Stream<UserModel> getUserData(String uid);
}
