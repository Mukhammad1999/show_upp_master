part of 'user_location_bloc.dart';

@freezed
class UserLocationState with _$UserLocationState {
  const factory UserLocationState.loading({
    LocationEntity? userLocation,
  }) = UserLocationLoading;
  const factory UserLocationState.success({
    LocationEntity? userLocation,
  }) = UserLocationSuccess;
  const factory UserLocationState.failure({
    LocationEntity? userLocation,
  }) = UserLocationFailure;
}
