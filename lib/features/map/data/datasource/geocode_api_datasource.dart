abstract interface class GeocodeAPIDataSource {
  Future<List<({double lat, double long})>> getLatLong(String address);
}
