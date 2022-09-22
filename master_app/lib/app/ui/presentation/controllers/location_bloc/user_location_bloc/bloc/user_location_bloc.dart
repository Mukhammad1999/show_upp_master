import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:master_app/app/entities/location_entity.dart';
import 'package:master_app/app/utils/service/location_service.dart';

part 'user_location_event.dart';
part 'user_location_state.dart';
part 'user_location_bloc.freezed.dart';

class UserLocationBloc extends Bloc<UserLocationEvent, UserLocationState> {
  UserLocationBloc({required LocationService locationService})
      : _locationService = locationService,
        super(
          const UserLocationLoading(),
        ) {
    on<UserLocationEvent>((event, emit) {});
    on<FetchUserLocation>(_fetchUserLocation);
  }

  final LocationService _locationService;

  FutureOr<void> _fetchUserLocation(
    FetchUserLocation event,
    Emitter<UserLocationState> emit,
  ) async {
    emit(
      UserLocationState.loading(
        userLocation: state.userLocation,
      ),
    );
    try {
      print("YEEE");
      final result = await _locationService.fetchUserLocation();
      emit(
        UserLocationState.success(
          userLocation: result,
        ),
      );
    } catch (e) {
      print(e.toString());
      emit(
        UserLocationState.failure(
          userLocation: state.userLocation,
        ),
      );
    }
  }
}
