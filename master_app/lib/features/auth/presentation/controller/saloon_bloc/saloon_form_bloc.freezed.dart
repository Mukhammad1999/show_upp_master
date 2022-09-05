// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'saloon_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaloonFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateSaloonForm updateEvent) update,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UpdateSaloonForm updateEvent)? update,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateSaloonForm updateEvent)? update,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateForm value) update,
    required TResult Function(SubmitForm value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateForm value)? update,
    TResult Function(SubmitForm value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateForm value)? update,
    TResult Function(SubmitForm value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaloonFormEventCopyWith<$Res> {
  factory $SaloonFormEventCopyWith(
          SaloonFormEvent value, $Res Function(SaloonFormEvent) then) =
      _$SaloonFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaloonFormEventCopyWithImpl<$Res>
    implements $SaloonFormEventCopyWith<$Res> {
  _$SaloonFormEventCopyWithImpl(this._value, this._then);

  final SaloonFormEvent _value;
  // ignore: unused_field
  final $Res Function(SaloonFormEvent) _then;
}

/// @nodoc
abstract class _$$UpdateFormCopyWith<$Res> {
  factory _$$UpdateFormCopyWith(
          _$UpdateForm value, $Res Function(_$UpdateForm) then) =
      __$$UpdateFormCopyWithImpl<$Res>;
  $Res call({UpdateSaloonForm updateEvent});

  $UpdateSaloonFormCopyWith<$Res> get updateEvent;
}

/// @nodoc
class __$$UpdateFormCopyWithImpl<$Res>
    extends _$SaloonFormEventCopyWithImpl<$Res>
    implements _$$UpdateFormCopyWith<$Res> {
  __$$UpdateFormCopyWithImpl(
      _$UpdateForm _value, $Res Function(_$UpdateForm) _then)
      : super(_value, (v) => _then(v as _$UpdateForm));

  @override
  _$UpdateForm get _value => super._value as _$UpdateForm;

  @override
  $Res call({
    Object? updateEvent = freezed,
  }) {
    return _then(_$UpdateForm(
      updateEvent: updateEvent == freezed
          ? _value.updateEvent
          : updateEvent // ignore: cast_nullable_to_non_nullable
              as UpdateSaloonForm,
    ));
  }

  @override
  $UpdateSaloonFormCopyWith<$Res> get updateEvent {
    return $UpdateSaloonFormCopyWith<$Res>(_value.updateEvent, (value) {
      return _then(_value.copyWith(updateEvent: value));
    });
  }
}

/// @nodoc

class _$UpdateForm implements UpdateForm {
  const _$UpdateForm({required this.updateEvent});

  @override
  final UpdateSaloonForm updateEvent;

  @override
  String toString() {
    return 'SaloonFormEvent.update(updateEvent: $updateEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateForm &&
            const DeepCollectionEquality()
                .equals(other.updateEvent, updateEvent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updateEvent));

  @JsonKey(ignore: true)
  @override
  _$$UpdateFormCopyWith<_$UpdateForm> get copyWith =>
      __$$UpdateFormCopyWithImpl<_$UpdateForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateSaloonForm updateEvent) update,
    required TResult Function() submit,
  }) {
    return update(updateEvent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UpdateSaloonForm updateEvent)? update,
    TResult Function()? submit,
  }) {
    return update?.call(updateEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateSaloonForm updateEvent)? update,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(updateEvent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateForm value) update,
    required TResult Function(SubmitForm value) submit,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateForm value)? update,
    TResult Function(SubmitForm value)? submit,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateForm value)? update,
    TResult Function(SubmitForm value)? submit,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateForm implements SaloonFormEvent {
  const factory UpdateForm({required final UpdateSaloonForm updateEvent}) =
      _$UpdateForm;

  UpdateSaloonForm get updateEvent;
  @JsonKey(ignore: true)
  _$$UpdateFormCopyWith<_$UpdateForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitFormCopyWith<$Res> {
  factory _$$SubmitFormCopyWith(
          _$SubmitForm value, $Res Function(_$SubmitForm) then) =
      __$$SubmitFormCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitFormCopyWithImpl<$Res>
    extends _$SaloonFormEventCopyWithImpl<$Res>
    implements _$$SubmitFormCopyWith<$Res> {
  __$$SubmitFormCopyWithImpl(
      _$SubmitForm _value, $Res Function(_$SubmitForm) _then)
      : super(_value, (v) => _then(v as _$SubmitForm));

  @override
  _$SubmitForm get _value => super._value as _$SubmitForm;
}

/// @nodoc

class _$SubmitForm implements SubmitForm {
  const _$SubmitForm();

  @override
  String toString() {
    return 'SaloonFormEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateSaloonForm updateEvent) update,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UpdateSaloonForm updateEvent)? update,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateSaloonForm updateEvent)? update,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateForm value) update,
    required TResult Function(SubmitForm value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateForm value)? update,
    TResult Function(SubmitForm value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateForm value)? update,
    TResult Function(SubmitForm value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitForm implements SaloonFormEvent {
  const factory SubmitForm() = _$SubmitForm;
}

/// @nodoc
mixin _$UpdateSaloonForm {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) name,
    required TResult Function(String? location) location,
    required TResult Function(String? phoneNumber) phoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? location)? location,
    TResult Function(String? phoneNumber)? phoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? location)? location,
    TResult Function(String? phoneNumber)? phoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateName value) name,
    required TResult Function(UpdateLocation value) location,
    required TResult Function(UpdatePhoneNumber value) phoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateLocation value)? location,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateLocation value)? location,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSaloonFormCopyWith<$Res> {
  factory $UpdateSaloonFormCopyWith(
          UpdateSaloonForm value, $Res Function(UpdateSaloonForm) then) =
      _$UpdateSaloonFormCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateSaloonFormCopyWithImpl<$Res>
    implements $UpdateSaloonFormCopyWith<$Res> {
  _$UpdateSaloonFormCopyWithImpl(this._value, this._then);

  final UpdateSaloonForm _value;
  // ignore: unused_field
  final $Res Function(UpdateSaloonForm) _then;
}

/// @nodoc
abstract class _$$UpdateNameCopyWith<$Res> {
  factory _$$UpdateNameCopyWith(
          _$UpdateName value, $Res Function(_$UpdateName) then) =
      __$$UpdateNameCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class __$$UpdateNameCopyWithImpl<$Res>
    extends _$UpdateSaloonFormCopyWithImpl<$Res>
    implements _$$UpdateNameCopyWith<$Res> {
  __$$UpdateNameCopyWithImpl(
      _$UpdateName _value, $Res Function(_$UpdateName) _then)
      : super(_value, (v) => _then(v as _$UpdateName));

  @override
  _$UpdateName get _value => super._value as _$UpdateName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$UpdateName(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateName implements UpdateName {
  const _$UpdateName({required this.name});

  @override
  final String? name;

  @override
  String toString() {
    return 'UpdateSaloonForm.name(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$UpdateNameCopyWith<_$UpdateName> get copyWith =>
      __$$UpdateNameCopyWithImpl<_$UpdateName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) name,
    required TResult Function(String? location) location,
    required TResult Function(String? phoneNumber) phoneNumber,
  }) {
    return name(this.name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? location)? location,
    TResult Function(String? phoneNumber)? phoneNumber,
  }) {
    return name?.call(this.name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? location)? location,
    TResult Function(String? phoneNumber)? phoneNumber,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this.name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateName value) name,
    required TResult Function(UpdateLocation value) location,
    required TResult Function(UpdatePhoneNumber value) phoneNumber,
  }) {
    return name(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateLocation value)? location,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
  }) {
    return name?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateLocation value)? location,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this);
    }
    return orElse();
  }
}

abstract class UpdateName implements UpdateSaloonForm {
  const factory UpdateName({required final String? name}) = _$UpdateName;

  String? get name;
  @JsonKey(ignore: true)
  _$$UpdateNameCopyWith<_$UpdateName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLocationCopyWith<$Res> {
  factory _$$UpdateLocationCopyWith(
          _$UpdateLocation value, $Res Function(_$UpdateLocation) then) =
      __$$UpdateLocationCopyWithImpl<$Res>;
  $Res call({String? location});
}

/// @nodoc
class __$$UpdateLocationCopyWithImpl<$Res>
    extends _$UpdateSaloonFormCopyWithImpl<$Res>
    implements _$$UpdateLocationCopyWith<$Res> {
  __$$UpdateLocationCopyWithImpl(
      _$UpdateLocation _value, $Res Function(_$UpdateLocation) _then)
      : super(_value, (v) => _then(v as _$UpdateLocation));

  @override
  _$UpdateLocation get _value => super._value as _$UpdateLocation;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$UpdateLocation(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateLocation implements UpdateLocation {
  const _$UpdateLocation({required this.location});

  @override
  final String? location;

  @override
  String toString() {
    return 'UpdateSaloonForm.location(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLocation &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$UpdateLocationCopyWith<_$UpdateLocation> get copyWith =>
      __$$UpdateLocationCopyWithImpl<_$UpdateLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) name,
    required TResult Function(String? location) location,
    required TResult Function(String? phoneNumber) phoneNumber,
  }) {
    return location(this.location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? location)? location,
    TResult Function(String? phoneNumber)? phoneNumber,
  }) {
    return location?.call(this.location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? location)? location,
    TResult Function(String? phoneNumber)? phoneNumber,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this.location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateName value) name,
    required TResult Function(UpdateLocation value) location,
    required TResult Function(UpdatePhoneNumber value) phoneNumber,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateLocation value)? location,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateLocation value)? location,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }
}

abstract class UpdateLocation implements UpdateSaloonForm {
  const factory UpdateLocation({required final String? location}) =
      _$UpdateLocation;

  String? get location;
  @JsonKey(ignore: true)
  _$$UpdateLocationCopyWith<_$UpdateLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePhoneNumberCopyWith<$Res> {
  factory _$$UpdatePhoneNumberCopyWith(
          _$UpdatePhoneNumber value, $Res Function(_$UpdatePhoneNumber) then) =
      __$$UpdatePhoneNumberCopyWithImpl<$Res>;
  $Res call({String? phoneNumber});
}

/// @nodoc
class __$$UpdatePhoneNumberCopyWithImpl<$Res>
    extends _$UpdateSaloonFormCopyWithImpl<$Res>
    implements _$$UpdatePhoneNumberCopyWith<$Res> {
  __$$UpdatePhoneNumberCopyWithImpl(
      _$UpdatePhoneNumber _value, $Res Function(_$UpdatePhoneNumber) _then)
      : super(_value, (v) => _then(v as _$UpdatePhoneNumber));

  @override
  _$UpdatePhoneNumber get _value => super._value as _$UpdatePhoneNumber;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$UpdatePhoneNumber(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdatePhoneNumber implements UpdatePhoneNumber {
  const _$UpdatePhoneNumber({required this.phoneNumber});

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'UpdateSaloonForm.phoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePhoneNumber &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$UpdatePhoneNumberCopyWith<_$UpdatePhoneNumber> get copyWith =>
      __$$UpdatePhoneNumberCopyWithImpl<_$UpdatePhoneNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) name,
    required TResult Function(String? location) location,
    required TResult Function(String? phoneNumber) phoneNumber,
  }) {
    return phoneNumber(this.phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? location)? location,
    TResult Function(String? phoneNumber)? phoneNumber,
  }) {
    return phoneNumber?.call(this.phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? location)? location,
    TResult Function(String? phoneNumber)? phoneNumber,
    required TResult orElse(),
  }) {
    if (phoneNumber != null) {
      return phoneNumber(this.phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateName value) name,
    required TResult Function(UpdateLocation value) location,
    required TResult Function(UpdatePhoneNumber value) phoneNumber,
  }) {
    return phoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateLocation value)? location,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
  }) {
    return phoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateLocation value)? location,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    required TResult orElse(),
  }) {
    if (phoneNumber != null) {
      return phoneNumber(this);
    }
    return orElse();
  }
}

abstract class UpdatePhoneNumber implements UpdateSaloonForm {
  const factory UpdatePhoneNumber({required final String? phoneNumber}) =
      _$UpdatePhoneNumber;

  String? get phoneNumber;
  @JsonKey(ignore: true)
  _$$UpdatePhoneNumberCopyWith<_$UpdatePhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SaloonFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SaloonFormEntity saloonFormEntity) update,
    required TResult Function(SaloonFormEntity saloonFormEntity) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormUpdate value) update,
    required TResult Function(FormSuccess value) success,
    required TResult Function(FormError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaloonFormStateCopyWith<$Res> {
  factory $SaloonFormStateCopyWith(
          SaloonFormState value, $Res Function(SaloonFormState) then) =
      _$SaloonFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaloonFormStateCopyWithImpl<$Res>
    implements $SaloonFormStateCopyWith<$Res> {
  _$SaloonFormStateCopyWithImpl(this._value, this._then);

  final SaloonFormState _value;
  // ignore: unused_field
  final $Res Function(SaloonFormState) _then;
}

/// @nodoc
abstract class _$$FormInitialCopyWith<$Res> {
  factory _$$FormInitialCopyWith(
          _$FormInitial value, $Res Function(_$FormInitial) then) =
      __$$FormInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormInitialCopyWithImpl<$Res>
    extends _$SaloonFormStateCopyWithImpl<$Res>
    implements _$$FormInitialCopyWith<$Res> {
  __$$FormInitialCopyWithImpl(
      _$FormInitial _value, $Res Function(_$FormInitial) _then)
      : super(_value, (v) => _then(v as _$FormInitial));

  @override
  _$FormInitial get _value => super._value as _$FormInitial;
}

/// @nodoc

class _$FormInitial implements FormInitial {
  const _$FormInitial();

  @override
  String toString() {
    return 'SaloonFormState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SaloonFormEntity saloonFormEntity) update,
    required TResult Function(SaloonFormEntity saloonFormEntity) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormUpdate value) update,
    required TResult Function(FormSuccess value) success,
    required TResult Function(FormError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FormInitial implements SaloonFormState {
  const factory FormInitial() = _$FormInitial;
}

/// @nodoc
abstract class _$$FormLoadingCopyWith<$Res> {
  factory _$$FormLoadingCopyWith(
          _$FormLoading value, $Res Function(_$FormLoading) then) =
      __$$FormLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormLoadingCopyWithImpl<$Res>
    extends _$SaloonFormStateCopyWithImpl<$Res>
    implements _$$FormLoadingCopyWith<$Res> {
  __$$FormLoadingCopyWithImpl(
      _$FormLoading _value, $Res Function(_$FormLoading) _then)
      : super(_value, (v) => _then(v as _$FormLoading));

  @override
  _$FormLoading get _value => super._value as _$FormLoading;
}

/// @nodoc

class _$FormLoading implements FormLoading {
  const _$FormLoading();

  @override
  String toString() {
    return 'SaloonFormState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SaloonFormEntity saloonFormEntity) update,
    required TResult Function(SaloonFormEntity saloonFormEntity) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
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
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormUpdate value) update,
    required TResult Function(FormSuccess value) success,
    required TResult Function(FormError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FormLoading implements SaloonFormState {
  const factory FormLoading() = _$FormLoading;
}

/// @nodoc
abstract class _$$FormUpdateCopyWith<$Res> {
  factory _$$FormUpdateCopyWith(
          _$FormUpdate value, $Res Function(_$FormUpdate) then) =
      __$$FormUpdateCopyWithImpl<$Res>;
  $Res call({SaloonFormEntity saloonFormEntity});
}

/// @nodoc
class __$$FormUpdateCopyWithImpl<$Res>
    extends _$SaloonFormStateCopyWithImpl<$Res>
    implements _$$FormUpdateCopyWith<$Res> {
  __$$FormUpdateCopyWithImpl(
      _$FormUpdate _value, $Res Function(_$FormUpdate) _then)
      : super(_value, (v) => _then(v as _$FormUpdate));

  @override
  _$FormUpdate get _value => super._value as _$FormUpdate;

  @override
  $Res call({
    Object? saloonFormEntity = freezed,
  }) {
    return _then(_$FormUpdate(
      saloonFormEntity: saloonFormEntity == freezed
          ? _value.saloonFormEntity
          : saloonFormEntity // ignore: cast_nullable_to_non_nullable
              as SaloonFormEntity,
    ));
  }
}

/// @nodoc

class _$FormUpdate implements FormUpdate {
  const _$FormUpdate({required this.saloonFormEntity});

  @override
  final SaloonFormEntity saloonFormEntity;

  @override
  String toString() {
    return 'SaloonFormState.update(saloonFormEntity: $saloonFormEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormUpdate &&
            const DeepCollectionEquality()
                .equals(other.saloonFormEntity, saloonFormEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(saloonFormEntity));

  @JsonKey(ignore: true)
  @override
  _$$FormUpdateCopyWith<_$FormUpdate> get copyWith =>
      __$$FormUpdateCopyWithImpl<_$FormUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SaloonFormEntity saloonFormEntity) update,
    required TResult Function(SaloonFormEntity saloonFormEntity) success,
    required TResult Function() error,
  }) {
    return update(saloonFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
  }) {
    return update?.call(saloonFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(saloonFormEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormUpdate value) update,
    required TResult Function(FormSuccess value) success,
    required TResult Function(FormError value) error,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class FormUpdate implements SaloonFormState {
  const factory FormUpdate({required final SaloonFormEntity saloonFormEntity}) =
      _$FormUpdate;

  SaloonFormEntity get saloonFormEntity;
  @JsonKey(ignore: true)
  _$$FormUpdateCopyWith<_$FormUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSuccessCopyWith<$Res> {
  factory _$$FormSuccessCopyWith(
          _$FormSuccess value, $Res Function(_$FormSuccess) then) =
      __$$FormSuccessCopyWithImpl<$Res>;
  $Res call({SaloonFormEntity saloonFormEntity});
}

/// @nodoc
class __$$FormSuccessCopyWithImpl<$Res>
    extends _$SaloonFormStateCopyWithImpl<$Res>
    implements _$$FormSuccessCopyWith<$Res> {
  __$$FormSuccessCopyWithImpl(
      _$FormSuccess _value, $Res Function(_$FormSuccess) _then)
      : super(_value, (v) => _then(v as _$FormSuccess));

  @override
  _$FormSuccess get _value => super._value as _$FormSuccess;

  @override
  $Res call({
    Object? saloonFormEntity = freezed,
  }) {
    return _then(_$FormSuccess(
      saloonFormEntity: saloonFormEntity == freezed
          ? _value.saloonFormEntity
          : saloonFormEntity // ignore: cast_nullable_to_non_nullable
              as SaloonFormEntity,
    ));
  }
}

/// @nodoc

class _$FormSuccess implements FormSuccess {
  const _$FormSuccess({required this.saloonFormEntity});

  @override
  final SaloonFormEntity saloonFormEntity;

  @override
  String toString() {
    return 'SaloonFormState.success(saloonFormEntity: $saloonFormEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSuccess &&
            const DeepCollectionEquality()
                .equals(other.saloonFormEntity, saloonFormEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(saloonFormEntity));

  @JsonKey(ignore: true)
  @override
  _$$FormSuccessCopyWith<_$FormSuccess> get copyWith =>
      __$$FormSuccessCopyWithImpl<_$FormSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SaloonFormEntity saloonFormEntity) update,
    required TResult Function(SaloonFormEntity saloonFormEntity) success,
    required TResult Function() error,
  }) {
    return success(saloonFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
  }) {
    return success?.call(saloonFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(saloonFormEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormUpdate value) update,
    required TResult Function(FormSuccess value) success,
    required TResult Function(FormError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FormSuccess implements SaloonFormState {
  const factory FormSuccess(
      {required final SaloonFormEntity saloonFormEntity}) = _$FormSuccess;

  SaloonFormEntity get saloonFormEntity;
  @JsonKey(ignore: true)
  _$$FormSuccessCopyWith<_$FormSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormErrorCopyWith<$Res> {
  factory _$$FormErrorCopyWith(
          _$FormError value, $Res Function(_$FormError) then) =
      __$$FormErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormErrorCopyWithImpl<$Res>
    extends _$SaloonFormStateCopyWithImpl<$Res>
    implements _$$FormErrorCopyWith<$Res> {
  __$$FormErrorCopyWithImpl(
      _$FormError _value, $Res Function(_$FormError) _then)
      : super(_value, (v) => _then(v as _$FormError));

  @override
  _$FormError get _value => super._value as _$FormError;
}

/// @nodoc

class _$FormError implements FormError {
  const _$FormError();

  @override
  String toString() {
    return 'SaloonFormState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SaloonFormEntity saloonFormEntity) update,
    required TResult Function(SaloonFormEntity saloonFormEntity) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SaloonFormEntity saloonFormEntity)? update,
    TResult Function(SaloonFormEntity saloonFormEntity)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormUpdate value) update,
    required TResult Function(FormSuccess value) success,
    required TResult Function(FormError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormUpdate value)? update,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FormError implements SaloonFormState {
  const factory FormError() = _$FormError;
}
