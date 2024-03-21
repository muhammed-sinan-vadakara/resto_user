// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'details_add_model.freezed.dart';
part 'details_add_model.g.dart';

@freezed
class DetailsAddModel with _$DetailsAddModel {
  const DetailsAddModel._();

  factory DetailsAddModel({
    required String? id,
    @JsonKey(name: "imagepath") required String? imagePath,
    required String? name,
  }) = _DetailsAddModel;

  factory DetailsAddModel.fromJson(Map<String, dynamic> json) =>
      _$DetailsAddModelFromJson(json);

  factory DetailsAddModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data()!;
    data['id'] = snapshot.id;
    return DetailsAddModel.fromJson(data);
  }
  Map<String, dynamic> toFirestore() {
    return toJson()..remove('id');
  }
}
