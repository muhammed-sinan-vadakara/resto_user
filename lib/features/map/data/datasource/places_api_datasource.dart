abstract interface class PlacesAPIDataSource {
  Future<List<({String address, String title})>> getAddress(
      String searchKeyword);
}
