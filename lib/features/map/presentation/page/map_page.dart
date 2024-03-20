import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:resto_user/features/map/presentation/widgets/map_textfield_widget.dart';

class Map extends HookWidget {
  static const routePath = '/map';
  const Map({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    final mapController =
        useMemoized(() => Completer<GoogleMapController>(), []);

    final markers = useState(<Marker>{});

    Future<void> getLocation() async {
      if ((await Geolocator.requestPermission()) == LocationPermission.always ||
          (await Geolocator.requestPermission()) ==
              LocationPermission.whileInUse) {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        final latLng = LatLng(position.latitude, position.longitude);

        final controller = mapController.future;
        controller.then(
          (value) => value.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: latLng,
                zoom: 16,
              ),
            ),
          ),
        );

        markers.value = {
          Marker(
            markerId: const MarkerId("currentLocation"),
            position: latLng,
            infoWindow: const InfoWindow(title: "Current Location"),
            icon: BitmapDescriptor.defaultMarker,
          ),
        };
      }
    }

    useEffect(() {
      getLocation();
      return null;
    }, []);

// Future<void> _goToPlace(Map<String, dynamic> place) async {
//   final double lat = place['geometry']['location']['lat'];
//   final double lng = place['geometry']['location']['lng'];

//   final GoogleMapController controller = await mapController.future;
//   controller.animateCamera(
//     CameraUpdate.newCameraPosition(
//       CameraPosition(target: LatLng(lat, lng), zoom: 15),
//     ),
//   );
// }
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          compassEnabled: false,
          zoomControlsEnabled: false,
          mapType: MapType.normal,
          initialCameraPosition: const CameraPosition(
            target: LatLng(11.237590752615738, 75.81913939445425),
            zoom: 24,
          ),
          onMapCreated: (GoogleMapController controller) {
            mapController.complete(controller);
          },
          markers: markers.value,
        ),
        SafeArea(
            child: Align(
                alignment: Alignment.topCenter,
                child: MapTextFieldWidget(
                  searchcontroller: controller,
                ))),
        Positioned(
            right: 20,
            bottom: 20,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                ),
                onPressed: () {
                  getLocation();
                },
                child: const Icon(
                  Icons.location_searching_rounded,
                  color: Colors.white,
                )))
      ]),
    );
  }
}
