import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:master_app/app/entities/location_entity.dart';
import 'package:master_app/app/utils/exceptions/custom_exceptions.dart';
import 'package:master_app/app/utils/service/location_service.dart';
import 'package:rxdart/transformers.dart';
part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc({
    required LocationService locationService,
  })  : _locationService = locationService,
        super(
          const LocationLoading(),
        ) {
    on<LocationEvent>((event, emit) {});
    on<FetchLocation>(
      _fetchLocation,
      transformer: (events, mapper) => droppable<FetchLocation>().call(
        events.throttleTime(
          const Duration(milliseconds: 500),
        ),
        mapper,
      ),
    );
  }

  final LocationService _locationService;

  FutureOr<void> _fetchLocation(
    FetchLocation event,
    Emitter<LocationState> emit,
  ) async {
    emit(
      const LocationState.loading(),
    );
    try {
      final result = await _locationService.fetchGeoCoding(
        event.lat,
        event.lon,
        event.locale,
      );
      emit(
        LocationSuccess(
          locationEntity: result,
        ),
      );
    } on PermissionException catch (e) {
      emit(
        LocationState.error(
          errorMessage: e.toString(),
          errorType: LocationErrorType.permissionError,
        ),
      );
    } on ServiceEnabledException catch (e) {
      emit(
        LocationState.error(
          errorMessage: e.toString(),
          errorType: LocationErrorType.serviceEnableError,
        ),
      );
    } catch (e) {
      emit(
        LocationState.error(
          errorMessage: e.toString(),
          errorType: LocationErrorType.fetchLocationError,
        ),
      );
    }
  }
}
