part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.loading() = LocationLoading;
  const factory LocationState.success({
    required LocationEntity? locationEntity,
  }) = LocationSuccess;
  const factory LocationState.error({
    required String errorMessage,
    required LocationErrorType errorType,
  }) = LocationError;
}

enum LocationErrorType {
  permissionError,
  serviceEnableError,
  fetchLocationError,
}
