// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  String get locale => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lon, String locale)
        fetchLocation,
    required TResult Function(String locale) getUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double lat, double lon, String locale)? fetchLocation,
    TResult Function(String locale)? getUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lon, String locale)? fetchLocation,
    TResult Function(String locale)? getUserLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLocation value) fetchLocation,
    required TResult Function(GetUserLocation value) getUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchLocation value)? fetchLocation,
    TResult Function(GetUserLocation value)? getUserLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLocation value)? fetchLocation,
    TResult Function(GetUserLocation value)? getUserLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationEventCopyWith<LocationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
  $Res call({String locale});
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$FetchLocationCopyWith<$Res>
    implements $LocationEventCopyWith<$Res> {
  factory _$$FetchLocationCopyWith(
          _$FetchLocation value, $Res Function(_$FetchLocation) then) =
      __$$FetchLocationCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lon, String locale});
}

/// @nodoc
class __$$FetchLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$$FetchLocationCopyWith<$Res> {
  __$$FetchLocationCopyWithImpl(
      _$FetchLocation _value, $Res Function(_$FetchLocation) _then)
      : super(_value, (v) => _then(v as _$FetchLocation));

  @override
  _$FetchLocation get _value => super._value as _$FetchLocation;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? locale = freezed,
  }) {
    return _then(_$FetchLocation(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchLocation implements FetchLocation {
  const _$FetchLocation(
      {required this.lat, required this.lon, required this.locale});

  @override
  final double lat;
  @override
  final double lon;
  @override
  final String locale;

  @override
  String toString() {
    return 'LocationEvent.fetchLocation(lat: $lat, lon: $lon, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchLocation &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$$FetchLocationCopyWith<_$FetchLocation> get copyWith =>
      __$$FetchLocationCopyWithImpl<_$FetchLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lon, String locale)
        fetchLocation,
    required TResult Function(String locale) getUserLocation,
  }) {
    return fetchLocation(lat, lon, locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double lat, double lon, String locale)? fetchLocation,
    TResult Function(String locale)? getUserLocation,
  }) {
    return fetchLocation?.call(lat, lon, locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lon, String locale)? fetchLocation,
    TResult Function(String locale)? getUserLocation,
    required TResult orElse(),
  }) {
    if (fetchLocation != null) {
      return fetchLocation(lat, lon, locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLocation value) fetchLocation,
    required TResult Function(GetUserLocation value) getUserLocation,
  }) {
    return fetchLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchLocation value)? fetchLocation,
    TResult Function(GetUserLocation value)? getUserLocation,
  }) {
    return fetchLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLocation value)? fetchLocation,
    TResult Function(GetUserLocation value)? getUserLocation,
    required TResult orElse(),
  }) {
    if (fetchLocation != null) {
      return fetchLocation(this);
    }
    return orElse();
  }
}

abstract class FetchLocation implements LocationEvent {
  const factory FetchLocation(
      {required final double lat,
      required final double lon,
      required final String locale}) = _$FetchLocation;

  double get lat;
  double get lon;
  @override
  String get locale;
  @override
  @JsonKey(ignore: true)
  _$$FetchLocationCopyWith<_$FetchLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserLocationCopyWith<$Res>
    implements $LocationEventCopyWith<$Res> {
  factory _$$GetUserLocationCopyWith(
          _$GetUserLocation value, $Res Function(_$GetUserLocation) then) =
      __$$GetUserLocationCopyWithImpl<$Res>;
  @override
  $Res call({String locale});
}

/// @nodoc
class __$$GetUserLocationCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$$GetUserLocationCopyWith<$Res> {
  __$$GetUserLocationCopyWithImpl(
      _$GetUserLocation _value, $Res Function(_$GetUserLocation) _then)
      : super(_value, (v) => _then(v as _$GetUserLocation));

  @override
  _$GetUserLocation get _value => super._value as _$GetUserLocation;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_$GetUserLocation(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserLocation implements GetUserLocation {
  const _$GetUserLocation({required this.locale});

  @override
  final String locale;

  @override
  String toString() {
    return 'LocationEvent.getUserLocation(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserLocation &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$$GetUserLocationCopyWith<_$GetUserLocation> get copyWith =>
      __$$GetUserLocationCopyWithImpl<_$GetUserLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lon, String locale)
        fetchLocation,
    required TResult Function(String locale) getUserLocation,
  }) {
    return getUserLocation(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double lat, double lon, String locale)? fetchLocation,
    TResult Function(String locale)? getUserLocation,
  }) {
    return getUserLocation?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lon, String locale)? fetchLocation,
    TResult Function(String locale)? getUserLocation,
    required TResult orElse(),
  }) {
    if (getUserLocation != null) {
      return getUserLocation(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchLocation value) fetchLocation,
    required TResult Function(GetUserLocation value) getUserLocation,
  }) {
    return getUserLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchLocation value)? fetchLocation,
    TResult Function(GetUserLocation value)? getUserLocation,
  }) {
    return getUserLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchLocation value)? fetchLocation,
    TResult Function(GetUserLocation value)? getUserLocation,
    required TResult orElse(),
  }) {
    if (getUserLocation != null) {
      return getUserLocation(this);
    }
    return orElse();
  }
}

abstract class GetUserLocation implements LocationEvent {
  const factory GetUserLocation({required final String locale}) =
      _$GetUserLocation;

  @override
  String get locale;
  @override
  @JsonKey(ignore: true)
  _$$GetUserLocationCopyWith<_$GetUserLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LocationEntity? locationEntity) success,
    required TResult Function(String errorMessage, LocationErrorType errorType)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LocationEntity? locationEntity)? success,
    TResult Function(String errorMessage, LocationErrorType errorType)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LocationEntity? locationEntity)? success,
    TResult Function(String errorMessage, LocationErrorType errorType)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationLoading value) loading,
    required TResult Function(LocationSuccess value) success,
    required TResult Function(LocationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationLoading value)? loading,
    TResult Function(LocationSuccess value)? success,
    TResult Function(LocationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationLoading value)? loading,
    TResult Function(LocationSuccess value)? success,
    TResult Function(LocationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class _$$LocationLoadingCopyWith<$Res> {
  factory _$$LocationLoadingCopyWith(
          _$LocationLoading value, $Res Function(_$LocationLoading) then) =
      __$$LocationLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationLoadingCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$$LocationLoadingCopyWith<$Res> {
  __$$LocationLoadingCopyWithImpl(
      _$LocationLoading _value, $Res Function(_$LocationLoading) _then)
      : super(_value, (v) => _then(v as _$LocationLoading));

  @override
  _$LocationLoading get _value => super._value as _$LocationLoading;
}

/// @nodoc

class _$LocationLoading implements LocationLoading {
  const _$LocationLoading();

  @override
  String toString() {
    return 'LocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LocationEntity? locationEntity) success,
    required TResult Function(String errorMessage, LocationErrorType errorType)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LocationEntity? locationEntity)? success,
    TResult Function(String errorMessage, LocationErrorType errorType)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LocationEntity? locationEntity)? success,
    TResult Function(String errorMessage, LocationErrorType errorType)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationLoading value) loading,
    required TResult Function(LocationSuccess value) success,
    required TResult Function(LocationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationLoading value)? loading,
    TResult Function(LocationSuccess value)? success,
    TResult Function(LocationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationLoading value)? loading,
    TResult Function(LocationSuccess value)? success,
    TResult Function(LocationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationLoading implements LocationState {
  const factory LocationLoading() = _$LocationLoading;
}

/// @nodoc
abstract class _$$LocationSuccessCopyWith<$Res> {
  factory _$$LocationSuccessCopyWith(
          _$LocationSuccess value, $Res Function(_$LocationSuccess) then) =
      __$$LocationSuccessCopyWithImpl<$Res>;
  $Res call({LocationEntity? locationEntity});
}

/// @nodoc
class __$$LocationSuccessCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$$LocationSuccessCopyWith<$Res> {
  __$$LocationSuccessCopyWithImpl(
      _$LocationSuccess _value, $Res Function(_$LocationSuccess) _then)
      : super(_value, (v) => _then(v as _$LocationSuccess));

  @override
  _$LocationSuccess get _value => super._value as _$LocationSuccess;

  @override
  $Res call({
    Object? locationEntity = freezed,
  }) {
    return _then(_$LocationSuccess(
      locationEntity: locationEntity == freezed
          ? _value.locationEntity
          : locationEntity // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
    ));
  }
}

/// @nodoc

class _$LocationSuccess implements LocationSuccess {
  const _$LocationSuccess({required this.locationEntity});

  @override
  final LocationEntity? locationEntity;

  @override
  String toString() {
    return 'LocationState.success(locationEntity: $locationEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationSuccess &&
            const DeepCollectionEquality()
                .equals(other.locationEntity, locationEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(locationEntity));

  @JsonKey(ignore: true)
  @override
  _$$LocationSuccessCopyWith<_$LocationSuccess> get copyWith =>
      __$$LocationSuccessCopyWithImpl<_$LocationSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LocationEntity? locationEntity) success,
    required TResult Function(String errorMessage, LocationErrorType errorType)
        error,
  }) {
    return success(locationEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LocationEntity? locationEntity)? success,
    TResult Function(String errorMessage, LocationErrorType errorType)? error,
  }) {
    return success?.call(locationEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LocationEntity? locationEntity)? success,
    TResult Function(String errorMessage, LocationErrorType errorType)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(locationEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationLoading value) loading,
    required TResult Function(LocationSuccess value) success,
    required TResult Function(LocationError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationLoading value)? loading,
    TResult Function(LocationSuccess value)? success,
    TResult Function(LocationError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationLoading value)? loading,
    TResult Function(LocationSuccess value)? success,
    TResult Function(LocationError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LocationSuccess implements LocationState {
  const factory LocationSuccess(
      {required final LocationEntity? locationEntity}) = _$LocationSuccess;

  LocationEntity? get locationEntity;
  @JsonKey(ignore: true)
  _$$LocationSuccessCopyWith<_$LocationSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationErrorCopyWith<$Res> {
  factory _$$LocationErrorCopyWith(
          _$LocationError value, $Res Function(_$LocationError) then) =
      __$$LocationErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage, LocationErrorType errorType});
}

/// @nodoc
class __$$LocationErrorCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$$LocationErrorCopyWith<$Res> {
  __$$LocationErrorCopyWithImpl(
      _$LocationError _value, $Res Function(_$LocationError) _then)
      : super(_value, (v) => _then(v as _$LocationError));

  @override
  _$LocationError get _value => super._value as _$LocationError;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? errorType = freezed,
  }) {
    return _then(_$LocationError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorType: errorType == freezed
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as LocationErrorType,
    ));
  }
}

/// @nodoc

class _$LocationError implements LocationError {
  const _$LocationError({required this.errorMessage, required this.errorType});

  @override
  final String errorMessage;
  @override
  final LocationErrorType errorType;

  @override
  String toString() {
    return 'LocationState.error(errorMessage: $errorMessage, errorType: $errorType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.errorType, errorType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(errorType));

  @JsonKey(ignore: true)
  @override
  _$$LocationErrorCopyWith<_$LocationError> get copyWith =>
      __$$LocationErrorCopyWithImpl<_$LocationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LocationEntity? locationEntity) success,
    required TResult Function(String errorMessage, LocationErrorType errorType)
        error,
  }) {
    return error(errorMessage, errorType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LocationEntity? locationEntity)? success,
    TResult Function(String errorMessage, LocationErrorType errorType)? error,
  }) {
    return error?.call(errorMessage, errorType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LocationEntity? locationEntity)? success,
    TResult Function(String errorMessage, LocationErrorType errorType)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage, errorType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationLoading value) loading,
    required TResult Function(LocationSuccess value) success,
    required TResult Function(LocationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationLoading value)? loading,
    TResult Function(LocationSuccess value)? success,
    TResult Function(LocationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationLoading value)? loading,
    TResult Function(LocationSuccess value)? success,
    TResult Function(LocationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocationError implements LocationState {
  const factory LocationError(
      {required final String errorMessage,
      required final LocationErrorType errorType}) = _$LocationError;

  String get errorMessage;
  LocationErrorType get errorType;
  @JsonKey(ignore: true)
  _$$LocationErrorCopyWith<_$LocationError> get copyWith =>
      throw _privateConstructorUsedError;
}
