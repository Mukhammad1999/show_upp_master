import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:master_app/app/entities/location_entity.dart';
import 'package:master_app/app/utils/service/location_service.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc({required LocationService locationService})
      : _locationService = locationService,
        super(
          const LocationLoading(),
        ) {
    on<LocationEvent>((event, emit) {});
    on<FetchLocation>(_fetchLocation);
  }

  final LocationService _locationService;

  FutureOr<void> _fetchLocation(
    FetchLocation event,
    Emitter<LocationState> emit,
  ) {
    emit(
      const LocationState.loading(),
    );
    try {} catch (e) {
      emit(
        LocationState.error(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
