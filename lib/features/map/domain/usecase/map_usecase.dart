import 'package:resto_user/features/map/domain/entity/map_entity.dart';
import 'package:resto_user/features/map/domain/repository/map_repository.dart';

class GetLocationUseCase {
  final MapAPIRepository repository;

  GetLocationUseCase({required this.repository});

  Future<List<LocationEntity>> call(String searchText) async {
    try {
      final locationData = <LocationEntity>[];
      final addressList = await repository.getAddress(searchText);

      for (final addressData in addressList) {
        final latLongData = await repository.getLatLong(addressData.address);
        locationData.add(
          LocationEntity(
            title: addressData.title,
            address: addressData.address,
            lat: latLongData.lat,
            long: latLongData.long,
          ),
        );
      }

      return locationData;
    } catch (e) {
      throw Exception("Error");
    }
    throw ('');
  }
}
