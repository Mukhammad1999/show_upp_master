import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'location_animation_state.dart';

class LocationAnimationCubit extends Cubit<LocationAnimationState> {
  LocationAnimationCubit()
      : super(
          const LocationAnimationState(),
        );

  void raiseMarker() {
    emit(state.copyWith(raise: true));
  }

  void loadMarker() {
    emit(
      state.copyWith(
        loading: true,
        raise: false,
      ),
    );
  }

  void stopLoading() {
    emit(state.copyWith(loading: false));
  }
}
