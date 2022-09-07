import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  const LocationEntity({
    this.latitude = 41.311081,
    this.longitude = 69.240562,
    this.placeMark,
  });

  final double latitude;
  final double longitude;
  final String? placeMark;

  @override
  List<Object?> get props => [latitude, longitude, placeMark];
}
