import 'package:resto_user/features/profile/domain/repository/user_data_repository.dart';

class SetUserDataUsecase {
  final UserDataRepository repository;
  SetUserDataUsecase({required this.repository});

  Future<void> call({
    required String imgPath,
    required String userName,
    required String mobileNumber,
    required String email,
  })async{
    
  }
}
