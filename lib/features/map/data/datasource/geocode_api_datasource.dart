abstract interface class GeocodeAPIDataSource {
  Future<({double lat, double long})> getLatLong(String address);
}
