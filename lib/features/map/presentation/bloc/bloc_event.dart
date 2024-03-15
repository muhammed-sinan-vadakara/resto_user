part of 'bloc_bloc.dart';

abstract class SearchPlaceEvent {}

class SearchPlaceStarted extends SearchPlaceEvent {
  final String query;

  SearchPlaceStarted(this.query);
}
