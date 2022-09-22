// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUserLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserLocation value) fetchUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchUserLocation value)? fetchUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserLocation value)? fetchUserLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationEventCopyWith<$Res> {
  factory $UserLocationEventCopyWith(
          UserLocationEvent value, $Res Function(UserLocationEvent) then) =
      _$UserLocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserLocationEventCopyWithImpl<$Res>
    implements $UserLocationEventCopyWith<$Res> {
  _$UserLocationEventCopyWithImpl(this._value, this._then);

  final UserLocationEvent _value;
  // ignore: unused_field
  final $Res Function(UserLocationEvent) _then;
}

/// @nodoc
abstract class _$$FetchUserLocationCopyWith<$Res> {
  factory _$$FetchUserLocationCopyWith(
          _$FetchUserLocation value, $Res Function(_$FetchUserLocation) then) =
      __$$FetchUserLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchUserLocationCopyWithImpl<$Res>
    extends _$UserLocationEventCopyWithImpl<$Res>
    implements _$$FetchUserLocationCopyWith<$Res> {
  __$$FetchUserLocationCopyWithImpl(
      _$FetchUserLocation _value, $Res Function(_$FetchUserLocation) _then)
      : super(_value, (v) => _then(v as _$FetchUserLocation));

  @override
  _$FetchUserLocation get _value => super._value as _$FetchUserLocation;
}

/// @nodoc

class _$FetchUserLocation implements FetchUserLocation {
  const _$FetchUserLocation();

  @override
  String toString() {
    return 'UserLocationEvent.fetchUserLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchUserLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchUserLocation,
  }) {
    return fetchUserLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchUserLocation,
  }) {
    return fetchUserLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchUserLocation,
    required TResult orElse(),
  }) {
    if (fetchUserLocation != null) {
      return fetchUserLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserLocation value) fetchUserLocation,
  }) {
    return fetchUserLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchUserLocation value)? fetchUserLocation,
  }) {
    return fetchUserLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserLocation value)? fetchUserLocation,
    required TResult orElse(),
  }) {
    if (fetchUserLocation != null) {
      return fetchUserLocation(this);
    }
    return orElse();
  }
}

abstract class FetchUserLocation implements UserLocationEvent {
  const factory FetchUserLocation() = _$FetchUserLocation;
}

/// @nodoc
mixin _$UserLocationState {
  LocationEntity? get userLocation => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationEntity? userLocation) loading,
    required TResult Function(LocationEntity? userLocation) success,
    required TResult Function(LocationEntity? userLocation) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationEntity? userLocation)? loading,
    TResult Function(LocationEntity? userLocation)? success,
    TResult Function(LocationEntity? userLocation)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationEntity? userLocation)? loading,
    TResult Function(LocationEntity? userLocation)? success,
    TResult Function(LocationEntity? userLocation)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLocationLoading value) loading,
    required TResult Function(UserLocationSuccess value) success,
    required TResult Function(UserLocationFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLocationLoading value)? loading,
    TResult Function(UserLocationSuccess value)? success,
    TResult Function(UserLocationFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLocationLoading value)? loading,
    TResult Function(UserLocationSuccess value)? success,
    TResult Function(UserLocationFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLocationStateCopyWith<UserLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationStateCopyWith<$Res> {
  factory $UserLocationStateCopyWith(
          UserLocationState value, $Res Function(UserLocationState) then) =
      _$UserLocationStateCopyWithImpl<$Res>;
  $Res call({LocationEntity? userLocation});
}

/// @nodoc
class _$UserLocationStateCopyWithImpl<$Res>
    implements $UserLocationStateCopyWith<$Res> {
  _$UserLocationStateCopyWithImpl(this._value, this._then);

  final UserLocationState _value;
  // ignore: unused_field
  final $Res Function(UserLocationState) _then;

  @override
  $Res call({
    Object? userLocation = freezed,
  }) {
    return _then(_value.copyWith(
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
    ));
  }
}

/// @nodoc
abstract class _$$UserLocationLoadingCopyWith<$Res>
    implements $UserLocationStateCopyWith<$Res> {
  factory _$$UserLocationLoadingCopyWith(_$UserLocationLoading value,
          $Res Function(_$UserLocationLoading) then) =
      __$$UserLocationLoadingCopyWithImpl<$Res>;
  @override
  $Res call({LocationEntity? userLocation});
}

/// @nodoc
class __$$UserLocationLoadingCopyWithImpl<$Res>
    extends _$UserLocationStateCopyWithImpl<$Res>
    implements _$$UserLocationLoadingCopyWith<$Res> {
  __$$UserLocationLoadingCopyWithImpl(
      _$UserLocationLoading _value, $Res Function(_$UserLocationLoading) _then)
      : super(_value, (v) => _then(v as _$UserLocationLoading));

  @override
  _$UserLocationLoading get _value => super._value as _$UserLocationLoading;

  @override
  $Res call({
    Object? userLocation = freezed,
  }) {
    return _then(_$UserLocationLoading(
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
    ));
  }
}

/// @nodoc

class _$UserLocationLoading implements UserLocationLoading {
  const _$UserLocationLoading({this.userLocation});

  @override
  final LocationEntity? userLocation;

  @override
  String toString() {
    return 'UserLocationState.loading(userLocation: $userLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationLoading &&
            const DeepCollectionEquality()
                .equals(other.userLocation, userLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userLocation));

  @JsonKey(ignore: true)
  @override
  _$$UserLocationLoadingCopyWith<_$UserLocationLoading> get copyWith =>
      __$$UserLocationLoadingCopyWithImpl<_$UserLocationLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationEntity? userLocation) loading,
    required TResult Function(LocationEntity? userLocation) success,
    required TResult Function(LocationEntity? userLocation) failure,
  }) {
    return loading(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationEntity? userLocation)? loading,
    TResult Function(LocationEntity? userLocation)? success,
    TResult Function(LocationEntity? userLocation)? failure,
  }) {
    return loading?.call(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationEntity? userLocation)? loading,
    TResult Function(LocationEntity? userLocation)? success,
    TResult Function(LocationEntity? userLocation)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(userLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLocationLoading value) loading,
    required TResult Function(UserLocationSuccess value) success,
    required TResult Function(UserLocationFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLocationLoading value)? loading,
    TResult Function(UserLocationSuccess value)? success,
    TResult Function(UserLocationFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLocationLoading value)? loading,
    TResult Function(UserLocationSuccess value)? success,
    TResult Function(UserLocationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLocationLoading implements UserLocationState {
  const factory UserLocationLoading({final LocationEntity? userLocation}) =
      _$UserLocationLoading;

  @override
  LocationEntity? get userLocation;
  @override
  @JsonKey(ignore: true)
  _$$UserLocationLoadingCopyWith<_$UserLocationLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLocationSuccessCopyWith<$Res>
    implements $UserLocationStateCopyWith<$Res> {
  factory _$$UserLocationSuccessCopyWith(_$UserLocationSuccess value,
          $Res Function(_$UserLocationSuccess) then) =
      __$$UserLocationSuccessCopyWithImpl<$Res>;
  @override
  $Res call({LocationEntity? userLocation});
}

/// @nodoc
class __$$UserLocationSuccessCopyWithImpl<$Res>
    extends _$UserLocationStateCopyWithImpl<$Res>
    implements _$$UserLocationSuccessCopyWith<$Res> {
  __$$UserLocationSuccessCopyWithImpl(
      _$UserLocationSuccess _value, $Res Function(_$UserLocationSuccess) _then)
      : super(_value, (v) => _then(v as _$UserLocationSuccess));

  @override
  _$UserLocationSuccess get _value => super._value as _$UserLocationSuccess;

  @override
  $Res call({
    Object? userLocation = freezed,
  }) {
    return _then(_$UserLocationSuccess(
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
    ));
  }
}

/// @nodoc

class _$UserLocationSuccess implements UserLocationSuccess {
  const _$UserLocationSuccess({this.userLocation});

  @override
  final LocationEntity? userLocation;

  @override
  String toString() {
    return 'UserLocationState.success(userLocation: $userLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationSuccess &&
            const DeepCollectionEquality()
                .equals(other.userLocation, userLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userLocation));

  @JsonKey(ignore: true)
  @override
  _$$UserLocationSuccessCopyWith<_$UserLocationSuccess> get copyWith =>
      __$$UserLocationSuccessCopyWithImpl<_$UserLocationSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationEntity? userLocation) loading,
    required TResult Function(LocationEntity? userLocation) success,
    required TResult Function(LocationEntity? userLocation) failure,
  }) {
    return success(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationEntity? userLocation)? loading,
    TResult Function(LocationEntity? userLocation)? success,
    TResult Function(LocationEntity? userLocation)? failure,
  }) {
    return success?.call(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationEntity? userLocation)? loading,
    TResult Function(LocationEntity? userLocation)? success,
    TResult Function(LocationEntity? userLocation)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLocationLoading value) loading,
    required TResult Function(UserLocationSuccess value) success,
    required TResult Function(UserLocationFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLocationLoading value)? loading,
    TResult Function(UserLocationSuccess value)? success,
    TResult Function(UserLocationFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLocationLoading value)? loading,
    TResult Function(UserLocationSuccess value)? success,
    TResult Function(UserLocationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserLocationSuccess implements UserLocationState {
  const factory UserLocationSuccess({final LocationEntity? userLocation}) =
      _$UserLocationSuccess;

  @override
  LocationEntity? get userLocation;
  @override
  @JsonKey(ignore: true)
  _$$UserLocationSuccessCopyWith<_$UserLocationSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLocationFailureCopyWith<$Res>
    implements $UserLocationStateCopyWith<$Res> {
  factory _$$UserLocationFailureCopyWith(_$UserLocationFailure value,
          $Res Function(_$UserLocationFailure) then) =
      __$$UserLocationFailureCopyWithImpl<$Res>;
  @override
  $Res call({LocationEntity? userLocation});
}

/// @nodoc
class __$$UserLocationFailureCopyWithImpl<$Res>
    extends _$UserLocationStateCopyWithImpl<$Res>
    implements _$$UserLocationFailureCopyWith<$Res> {
  __$$UserLocationFailureCopyWithImpl(
      _$UserLocationFailure _value, $Res Function(_$UserLocationFailure) _then)
      : super(_value, (v) => _then(v as _$UserLocationFailure));

  @override
  _$UserLocationFailure get _value => super._value as _$UserLocationFailure;

  @override
  $Res call({
    Object? userLocation = freezed,
  }) {
    return _then(_$UserLocationFailure(
      userLocation: userLocation == freezed
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
    ));
  }
}

/// @nodoc

class _$UserLocationFailure implements UserLocationFailure {
  const _$UserLocationFailure({this.userLocation});

  @override
  final LocationEntity? userLocation;

  @override
  String toString() {
    return 'UserLocationState.failure(userLocation: $userLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationFailure &&
            const DeepCollectionEquality()
                .equals(other.userLocation, userLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userLocation));

  @JsonKey(ignore: true)
  @override
  _$$UserLocationFailureCopyWith<_$UserLocationFailure> get copyWith =>
      __$$UserLocationFailureCopyWithImpl<_$UserLocationFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationEntity? userLocation) loading,
    required TResult Function(LocationEntity? userLocation) success,
    required TResult Function(LocationEntity? userLocation) failure,
  }) {
    return failure(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationEntity? userLocation)? loading,
    TResult Function(LocationEntity? userLocation)? success,
    TResult Function(LocationEntity? userLocation)? failure,
  }) {
    return failure?.call(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationEntity? userLocation)? loading,
    TResult Function(LocationEntity? userLocation)? success,
    TResult Function(LocationEntity? userLocation)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(userLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLocationLoading value) loading,
    required TResult Function(UserLocationSuccess value) success,
    required TResult Function(UserLocationFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLocationLoading value)? loading,
    TResult Function(UserLocationSuccess value)? success,
    TResult Function(UserLocationFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLocationLoading value)? loading,
    TResult Function(UserLocationSuccess value)? success,
    TResult Function(UserLocationFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class UserLocationFailure implements UserLocationState {
  const factory UserLocationFailure({final LocationEntity? userLocation}) =
      _$UserLocationFailure;

  @override
  LocationEntity? get userLocation;
  @override
  @JsonKey(ignore: true)
  _$$UserLocationFailureCopyWith<_$UserLocationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
