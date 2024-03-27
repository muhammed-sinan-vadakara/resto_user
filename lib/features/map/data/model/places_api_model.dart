// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'places_api_model.freezed.dart';
part 'places_api_model.g.dart';

PlacesApiModel movievediosFromJson(String str) =>
    PlacesApiModel.fromJson(json.decode(str));

String movievediosToJson(PlacesApiModel data) => json.encode(data.toJson());

@freezed
class PlacesApiModel with _$PlacesApiModel {
  const factory PlacesApiModel({
    required List<Prediction> predictions,
    required String status,
  }) = _PlacesApiModel;

  factory PlacesApiModel.fromJson(Map<String, dynamic> json) =>
      _$PlacesApiModelFromJson(json);
}

@freezed
class Prediction with _$Prediction {
  const factory Prediction({
    required String description,
    @JsonKey(name: 'matched_substrings')
    required List<MatchedSubstring> matchedSubstrings,
    @JsonKey(name: 'place_id') required String placeId,
    required String reference,
    @JsonKey(name: 'structured_formatting')
    required StructuredFormatting structuredFormatting,
    required List<Term> terms,
    required List<String> types,
  }) = _Prediction;

  factory Prediction.fromJson(Map<String, dynamic> json) =>
      _$PredictionFromJson(json);
}

@freezed
class MatchedSubstring with _$MatchedSubstring {
  const factory MatchedSubstring({
    required int length,
    required int offset,
  }) = _MatchedSubstring;

  factory MatchedSubstring.fromJson(Map<String, dynamic> json) =>
      _$MatchedSubstringFromJson(json);
}

@freezed
class StructuredFormatting with _$StructuredFormatting {
  const factory StructuredFormatting({
    @JsonKey(name: 'main_text') required String mainText,
    @JsonKey(name: 'main_text_matched_substrings')
    required List<MatchedSubstring> mainTextMatchedSubstrings,
    @JsonKey(name: 'secondary_text') required String? secondaryText,
  }) = _StructuredFormatting;

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$StructuredFormattingFromJson(json);
}

@freezed
class Term with _$Term {
  const factory Term({
    required int offset,
    required String value,
  }) = _Term;

  factory Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);
}
