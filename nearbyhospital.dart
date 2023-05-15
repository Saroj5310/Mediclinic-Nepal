import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker/place_picker.dart';

class nearby extends StatefulWidget {
  nearby({Key? key}) : super(key: key);

  @override
  _nearbyState createState() => _nearbyState();
}

class _nearbyState extends State<nearby> {
  late Position _currentPosition = Position(
      latitude: 0.0,
      longitude: 0.0,
      timestamp: DateTime.now(),
      altitude: 0.0,
      heading: 0.0,
      speed: 0.0,
      speedAccuracy: 0.0,
      accuracy: 0.0);

  Set<Marker> _markers = {};
  late GoogleMapController _mapController;

  get PlacesAutocomplete => null;

  get _places => null;

  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<LatLng> _getLatLng(String placeId) async {
    final location = await _places.getDetailsByPlaceId(placeId);
    return LatLng(location.lat, location.lng);
  }

  Future<void> _addMarkersToMap(List<PlacePicker> places) async {
    _markers = {};
    for (PlacePicker place in places) {
      final marker = Marker(
        markerId: MarkerId(place.apiKey),
        position: await _getLatLng(place.apiKey),
        infoWindow: InfoWindow(title: place.apiKey),
      );
      _markers.add(marker);
    }
  }

  void _getNearbyHospitals() async {
    final location =
        LatLng(_currentPosition.latitude, _currentPosition.longitude);
    final result = await PlacesAutocomplete.show(
      context: context,
      apiKey: 'AIzaSyCkf8zm2dH7YS58KYRoBlBM4aMykH3cvcA',
      location: location,
      radius: 1000,
      type: 'hospital',
    );
    if (result.status == 'OK') {
      final places = result.predictions;
      setState(() {
        _addMarkersToMap(places);
      });
    }
  }

  void _getCurrentLocation() async {
    Position currentLocation;
    try {
      currentLocation = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      _currentPosition = currentLocation;
      _getNearbyHospitals();
    } catch (e) {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPosition == null
          ? Center(child: CircularProgressIndicator())
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                    _currentPosition.latitude, _currentPosition.longitude),
                zoom: 15.0,
              ),
              onMapCreated: (GoogleMapController controller) {
                // do something with the map controller
              },
            ),
    );
  }
}
