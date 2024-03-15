part of 'bloc_bloc.dart';

abstract class SearchPlaceState {}

class SearchPlaceInitial extends SearchPlaceState {}

class SearchPlaceLoading extends SearchPlaceState {}

class SearchPlaceSuccess extends SearchPlaceState {
  final Map<String, dynamic> results;

  SearchPlaceSuccess(this.results);
}

class SearchPlaceFailure extends SearchPlaceState {
  final String errorMessage;

  SearchPlaceFailure(this.errorMessage);
}
