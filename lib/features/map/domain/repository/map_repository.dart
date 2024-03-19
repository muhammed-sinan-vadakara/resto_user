abstract interface class MapAPIRepository {
  Future<List<({String address, String title})>> getAddress(
      String searchKeyword);
  Future<({double lat, double long})> getLatLong(String address);
}
