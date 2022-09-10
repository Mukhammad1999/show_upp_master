import 'package:google_geocoding/google_geocoding.dart' hide Location;
import 'package:location/location.dart';
import 'package:master_app/app/constants/constants.dart';
import 'package:master_app/app/entities/location_entity.dart';

class LocationService {
  final GoogleGeocoding _googleGeocoding = GoogleGeocoding(Constants.kApiKey);
  final Location _location = Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  Future<LocationEntity> fetchGeoCoding(
    double lat,
    double lon,
    String language,
  ) async {
    final result = await _googleGeocoding.geocoding.getReverse(
      LatLon(lat, lon),
      language: language,
    );
    return LocationEntity(
      latitude: lat,
      longitude: lon,
      placeMark: result?.results![0].formattedAddress,
    );
  }

  Future<LocationEntity> fetchUserLocation() async {
    _serviceEnabled = await _location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await _location.requestService();
      if (!_serviceEnabled) {}
    }

    _permissionGranted = await _location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }
}
