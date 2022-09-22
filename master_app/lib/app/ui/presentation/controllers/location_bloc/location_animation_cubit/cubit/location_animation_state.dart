part of 'location_animation_cubit.dart';

@immutable
class LocationAnimationState extends Equatable {
  const LocationAnimationState({
    this.raise = false,
    this.loading = false,
  });
  final bool raise;
  final bool loading;

  LocationAnimationState copyWith({
    bool? raise,
    bool? loading,
  }) {
    return LocationAnimationState(
      raise: raise ?? this.raise,
      loading: loading ?? this.loading,
    );
  }

  @override
  List<Object> get props => [raise, loading];
}
