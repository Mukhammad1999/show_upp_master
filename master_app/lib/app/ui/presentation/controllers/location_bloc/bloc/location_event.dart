part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.fetchLocation({
    required double lat,
    required double lon,
    required String locale,
  }) = FetchLocation;

  const factory LocationEvent.getUserLocation({
    required String locale,
  }) = GetUserLocation;
}
