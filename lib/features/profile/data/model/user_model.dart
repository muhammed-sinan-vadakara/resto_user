// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  factory UserModel({
    required String imgPath,
   @JsonKey(name: 'user_name') required String userName,
   @JsonKey(name: 'mobile_number') required String mobileNumber,
   required String email
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data()!;
    data['uid'] = snapshot.id;
    return UserModel.fromJson(data);
  }

  Map<String, dynamic> toFirestore() {
    return toJson()..remove('uid');
  }
}