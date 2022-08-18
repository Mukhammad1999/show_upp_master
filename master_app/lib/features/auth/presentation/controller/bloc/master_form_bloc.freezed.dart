// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'master_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MasterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateMasterForm updateEvent) update,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UpdateMasterForm updateEvent)? update,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateMasterForm updateEvent)? update,
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
abstract class $MasterFormEventCopyWith<$Res> {
  factory $MasterFormEventCopyWith(
          MasterFormEvent value, $Res Function(MasterFormEvent) then) =
      _$MasterFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MasterFormEventCopyWithImpl<$Res>
    implements $MasterFormEventCopyWith<$Res> {
  _$MasterFormEventCopyWithImpl(this._value, this._then);

  final MasterFormEvent _value;
  // ignore: unused_field
  final $Res Function(MasterFormEvent) _then;
}

/// @nodoc
abstract class _$$UpdateFormCopyWith<$Res> {
  factory _$$UpdateFormCopyWith(
          _$UpdateForm value, $Res Function(_$UpdateForm) then) =
      __$$UpdateFormCopyWithImpl<$Res>;
  $Res call({UpdateMasterForm updateEvent});

  $UpdateMasterFormCopyWith<$Res> get updateEvent;
}

/// @nodoc
class __$$UpdateFormCopyWithImpl<$Res>
    extends _$MasterFormEventCopyWithImpl<$Res>
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
              as UpdateMasterForm,
    ));
  }

  @override
  $UpdateMasterFormCopyWith<$Res> get updateEvent {
    return $UpdateMasterFormCopyWith<$Res>(_value.updateEvent, (value) {
      return _then(_value.copyWith(updateEvent: value));
    });
  }
}

/// @nodoc

class _$UpdateForm implements UpdateForm {
  const _$UpdateForm({required this.updateEvent});

  @override
  final UpdateMasterForm updateEvent;

  @override
  String toString() {
    return 'MasterFormEvent.update(updateEvent: $updateEvent)';
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
    required TResult Function(UpdateMasterForm updateEvent) update,
    required TResult Function() submit,
  }) {
    return update(updateEvent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UpdateMasterForm updateEvent)? update,
    TResult Function()? submit,
  }) {
    return update?.call(updateEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateMasterForm updateEvent)? update,
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

abstract class UpdateForm implements MasterFormEvent {
  const factory UpdateForm({required final UpdateMasterForm updateEvent}) =
      _$UpdateForm;

  UpdateMasterForm get updateEvent;
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
    extends _$MasterFormEventCopyWithImpl<$Res>
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
    return 'MasterFormEvent.submit()';
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
    required TResult Function(UpdateMasterForm updateEvent) update,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UpdateMasterForm updateEvent)? update,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateMasterForm updateEvent)? update,
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

abstract class SubmitForm implements MasterFormEvent {
  const factory SubmitForm() = _$SubmitForm;
}

/// @nodoc
mixin _$UpdateMasterForm {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) name,
    required TResult Function(String? surname) surname,
    required TResult Function(String? phoneNumber) phoneNumber,
    required TResult Function(Gender? gender) gender,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? surname)? surname,
    TResult Function(String? phoneNumber)? phoneNumber,
    TResult Function(Gender? gender)? gender,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? surname)? surname,
    TResult Function(String? phoneNumber)? phoneNumber,
    TResult Function(Gender? gender)? gender,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateName value) name,
    required TResult Function(UpdateSurname value) surname,
    required TResult Function(UpdatePhoneNumber value) phoneNumber,
    required TResult Function(UpdateGender value) gender,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateSurname value)? surname,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    TResult Function(UpdateGender value)? gender,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateSurname value)? surname,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    TResult Function(UpdateGender value)? gender,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMasterFormCopyWith<$Res> {
  factory $UpdateMasterFormCopyWith(
          UpdateMasterForm value, $Res Function(UpdateMasterForm) then) =
      _$UpdateMasterFormCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateMasterFormCopyWithImpl<$Res>
    implements $UpdateMasterFormCopyWith<$Res> {
  _$UpdateMasterFormCopyWithImpl(this._value, this._then);

  final UpdateMasterForm _value;
  // ignore: unused_field
  final $Res Function(UpdateMasterForm) _then;
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
    extends _$UpdateMasterFormCopyWithImpl<$Res>
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
    return 'UpdateMasterForm.name(name: $name)';
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
    required TResult Function(String? surname) surname,
    required TResult Function(String? phoneNumber) phoneNumber,
    required TResult Function(Gender? gender) gender,
  }) {
    return name(this.name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? surname)? surname,
    TResult Function(String? phoneNumber)? phoneNumber,
    TResult Function(Gender? gender)? gender,
  }) {
    return name?.call(this.name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? surname)? surname,
    TResult Function(String? phoneNumber)? phoneNumber,
    TResult Function(Gender? gender)? gender,
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
    required TResult Function(UpdateSurname value) surname,
    required TResult Function(UpdatePhoneNumber value) phoneNumber,
    required TResult Function(UpdateGender value) gender,
  }) {
    return name(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateSurname value)? surname,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    TResult Function(UpdateGender value)? gender,
  }) {
    return name?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateSurname value)? surname,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    TResult Function(UpdateGender value)? gender,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this);
    }
    return orElse();
  }
}

abstract class UpdateName implements UpdateMasterForm {
  const factory UpdateName({required final String? name}) = _$UpdateName;

  String? get name;
  @JsonKey(ignore: true)
  _$$UpdateNameCopyWith<_$UpdateName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSurnameCopyWith<$Res> {
  factory _$$UpdateSurnameCopyWith(
          _$UpdateSurname value, $Res Function(_$UpdateSurname) then) =
      __$$UpdateSurnameCopyWithImpl<$Res>;
  $Res call({String? surname});
}

/// @nodoc
class __$$UpdateSurnameCopyWithImpl<$Res>
    extends _$UpdateMasterFormCopyWithImpl<$Res>
    implements _$$UpdateSurnameCopyWith<$Res> {
  __$$UpdateSurnameCopyWithImpl(
      _$UpdateSurname _value, $Res Function(_$UpdateSurname) _then)
      : super(_value, (v) => _then(v as _$UpdateSurname));

  @override
  _$UpdateSurname get _value => super._value as _$UpdateSurname;

  @override
  $Res call({
    Object? surname = freezed,
  }) {
    return _then(_$UpdateSurname(
      surname: surname == freezed
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateSurname implements UpdateSurname {
  const _$UpdateSurname({required this.surname});

  @override
  final String? surname;

  @override
  String toString() {
    return 'UpdateMasterForm.surname(surname: $surname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSurname &&
            const DeepCollectionEquality().equals(other.surname, surname));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(surname));

  @JsonKey(ignore: true)
  @override
  _$$UpdateSurnameCopyWith<_$UpdateSurname> get copyWith =>
      __$$UpdateSurnameCopyWithImpl<_$UpdateSurname>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) name,
    required TResult Function(String? surname) surname,
    required TResult Function(String? phoneNumber) phoneNumber,
    required TResult Function(Gender? gender) gender,
  }) {
    return surname(this.surname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? surname)? surname,
    TResult Function(String? phoneNumber)? phoneNumber,
    TResult Function(Gender? gender)? gender,
  }) {
    return surname?.call(this.surname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? surname)? surname,
    TResult Function(String? phoneNumber)? phoneNumber,
    TResult Function(Gender? gender)? gender,
    required TResult orElse(),
  }) {
    if (surname != null) {
      return surname(this.surname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateName value) name,
    required TResult Function(UpdateSurname value) surname,
    required TResult Function(UpdatePhoneNumber value) phoneNumber,
    required TResult Function(UpdateGender value) gender,
  }) {
    return surname(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateSurname value)? surname,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    TResult Function(UpdateGender value)? gender,
  }) {
    return surname?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateSurname value)? surname,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    TResult Function(UpdateGender value)? gender,
    required TResult orElse(),
  }) {
    if (surname != null) {
      return surname(this);
    }
    return orElse();
  }
}

abstract class UpdateSurname implements UpdateMasterForm {
  const factory UpdateSurname({required final String? surname}) =
      _$UpdateSurname;

  String? get surname;
  @JsonKey(ignore: true)
  _$$UpdateSurnameCopyWith<_$UpdateSurname> get copyWith =>
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
    extends _$UpdateMasterFormCopyWithImpl<$Res>
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
    return 'UpdateMasterForm.phoneNumber(phoneNumber: $phoneNumber)';
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
    required TResult Function(String? surname) surname,
    required TResult Function(String? phoneNumber) phoneNumber,
    required TResult Function(Gender? gender) gender,
  }) {
    return phoneNumber(this.phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? surname)? surname,
    TResult Function(String? phoneNumber)? phoneNumber,
    TResult Function(Gender? gender)? gender,
  }) {
    return phoneNumber?.call(this.phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? surname)? surname,
    TResult Function(String? phoneNumber)? phoneNumber,
    TResult Function(Gender? gender)? gender,
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
    required TResult Function(UpdateSurname value) surname,
    required TResult Function(UpdatePhoneNumber value) phoneNumber,
    required TResult Function(UpdateGender value) gender,
  }) {
    return phoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateSurname value)? surname,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    TResult Function(UpdateGender value)? gender,
  }) {
    return phoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateSurname value)? surname,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    TResult Function(UpdateGender value)? gender,
    required TResult orElse(),
  }) {
    if (phoneNumber != null) {
      return phoneNumber(this);
    }
    return orElse();
  }
}

abstract class UpdatePhoneNumber implements UpdateMasterForm {
  const factory UpdatePhoneNumber({required final String? phoneNumber}) =
      _$UpdatePhoneNumber;

  String? get phoneNumber;
  @JsonKey(ignore: true)
  _$$UpdatePhoneNumberCopyWith<_$UpdatePhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateGenderCopyWith<$Res> {
  factory _$$UpdateGenderCopyWith(
          _$UpdateGender value, $Res Function(_$UpdateGender) then) =
      __$$UpdateGenderCopyWithImpl<$Res>;
  $Res call({Gender? gender});
}

/// @nodoc
class __$$UpdateGenderCopyWithImpl<$Res>
    extends _$UpdateMasterFormCopyWithImpl<$Res>
    implements _$$UpdateGenderCopyWith<$Res> {
  __$$UpdateGenderCopyWithImpl(
      _$UpdateGender _value, $Res Function(_$UpdateGender) _then)
      : super(_value, (v) => _then(v as _$UpdateGender));

  @override
  _$UpdateGender get _value => super._value as _$UpdateGender;

  @override
  $Res call({
    Object? gender = freezed,
  }) {
    return _then(_$UpdateGender(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc

class _$UpdateGender implements UpdateGender {
  const _$UpdateGender({required this.gender});

  @override
  final Gender? gender;

  @override
  String toString() {
    return 'UpdateMasterForm.gender(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGender &&
            const DeepCollectionEquality().equals(other.gender, gender));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gender));

  @JsonKey(ignore: true)
  @override
  _$$UpdateGenderCopyWith<_$UpdateGender> get copyWith =>
      __$$UpdateGenderCopyWithImpl<_$UpdateGender>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) name,
    required TResult Function(String? surname) surname,
    required TResult Function(String? phoneNumber) phoneNumber,
    required TResult Function(Gender? gender) gender,
  }) {
    return gender(this.gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? surname)? surname,
    TResult Function(String? phoneNumber)? phoneNumber,
    TResult Function(Gender? gender)? gender,
  }) {
    return gender?.call(this.gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? name,
    TResult Function(String? surname)? surname,
    TResult Function(String? phoneNumber)? phoneNumber,
    TResult Function(Gender? gender)? gender,
    required TResult orElse(),
  }) {
    if (gender != null) {
      return gender(this.gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateName value) name,
    required TResult Function(UpdateSurname value) surname,
    required TResult Function(UpdatePhoneNumber value) phoneNumber,
    required TResult Function(UpdateGender value) gender,
  }) {
    return gender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateSurname value)? surname,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    TResult Function(UpdateGender value)? gender,
  }) {
    return gender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateName value)? name,
    TResult Function(UpdateSurname value)? surname,
    TResult Function(UpdatePhoneNumber value)? phoneNumber,
    TResult Function(UpdateGender value)? gender,
    required TResult orElse(),
  }) {
    if (gender != null) {
      return gender(this);
    }
    return orElse();
  }
}

abstract class UpdateGender implements UpdateMasterForm {
  const factory UpdateGender({required final Gender? gender}) = _$UpdateGender;

  Gender? get gender;
  @JsonKey(ignore: true)
  _$$UpdateGenderCopyWith<_$UpdateGender> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MasterFormState {
  MasterFormEntity get masterFormEntity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MasterFormEntity masterFormEntity) initial,
    required TResult Function(MasterFormEntity masterFormEntity) loading,
    required TResult Function(MasterFormEntity masterFormEntity) success,
    required TResult Function(MasterFormEntity masterFormEntity) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MasterFormEntity masterFormEntity)? initial,
    TResult Function(MasterFormEntity masterFormEntity)? loading,
    TResult Function(MasterFormEntity masterFormEntity)? success,
    TResult Function(MasterFormEntity masterFormEntity)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MasterFormEntity masterFormEntity)? initial,
    TResult Function(MasterFormEntity masterFormEntity)? loading,
    TResult Function(MasterFormEntity masterFormEntity)? success,
    TResult Function(MasterFormEntity masterFormEntity)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormSuccess value) success,
    required TResult Function(FormError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormSuccess value)? success,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MasterFormStateCopyWith<MasterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterFormStateCopyWith<$Res> {
  factory $MasterFormStateCopyWith(
          MasterFormState value, $Res Function(MasterFormState) then) =
      _$MasterFormStateCopyWithImpl<$Res>;
  $Res call({MasterFormEntity masterFormEntity});
}

/// @nodoc
class _$MasterFormStateCopyWithImpl<$Res>
    implements $MasterFormStateCopyWith<$Res> {
  _$MasterFormStateCopyWithImpl(this._value, this._then);

  final MasterFormState _value;
  // ignore: unused_field
  final $Res Function(MasterFormState) _then;

  @override
  $Res call({
    Object? masterFormEntity = freezed,
  }) {
    return _then(_value.copyWith(
      masterFormEntity: masterFormEntity == freezed
          ? _value.masterFormEntity
          : masterFormEntity // ignore: cast_nullable_to_non_nullable
              as MasterFormEntity,
    ));
  }
}

/// @nodoc
abstract class _$$FormInitialCopyWith<$Res>
    implements $MasterFormStateCopyWith<$Res> {
  factory _$$FormInitialCopyWith(
          _$FormInitial value, $Res Function(_$FormInitial) then) =
      __$$FormInitialCopyWithImpl<$Res>;
  @override
  $Res call({MasterFormEntity masterFormEntity});
}

/// @nodoc
class __$$FormInitialCopyWithImpl<$Res>
    extends _$MasterFormStateCopyWithImpl<$Res>
    implements _$$FormInitialCopyWith<$Res> {
  __$$FormInitialCopyWithImpl(
      _$FormInitial _value, $Res Function(_$FormInitial) _then)
      : super(_value, (v) => _then(v as _$FormInitial));

  @override
  _$FormInitial get _value => super._value as _$FormInitial;

  @override
  $Res call({
    Object? masterFormEntity = freezed,
  }) {
    return _then(_$FormInitial(
      masterFormEntity: masterFormEntity == freezed
          ? _value.masterFormEntity
          : masterFormEntity // ignore: cast_nullable_to_non_nullable
              as MasterFormEntity,
    ));
  }
}

/// @nodoc

class _$FormInitial implements FormInitial {
  const _$FormInitial({required this.masterFormEntity});

  @override
  final MasterFormEntity masterFormEntity;

  @override
  String toString() {
    return 'MasterFormState.initial(masterFormEntity: $masterFormEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormInitial &&
            const DeepCollectionEquality()
                .equals(other.masterFormEntity, masterFormEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterFormEntity));

  @JsonKey(ignore: true)
  @override
  _$$FormInitialCopyWith<_$FormInitial> get copyWith =>
      __$$FormInitialCopyWithImpl<_$FormInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MasterFormEntity masterFormEntity) initial,
    required TResult Function(MasterFormEntity masterFormEntity) loading,
    required TResult Function(MasterFormEntity masterFormEntity) success,
    required TResult Function(MasterFormEntity masterFormEntity) error,
  }) {
    return initial(masterFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MasterFormEntity masterFormEntity)? initial,
    TResult Function(MasterFormEntity masterFormEntity)? loading,
    TResult Function(MasterFormEntity masterFormEntity)? success,
    TResult Function(MasterFormEntity masterFormEntity)? error,
  }) {
    return initial?.call(masterFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MasterFormEntity masterFormEntity)? initial,
    TResult Function(MasterFormEntity masterFormEntity)? loading,
    TResult Function(MasterFormEntity masterFormEntity)? success,
    TResult Function(MasterFormEntity masterFormEntity)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(masterFormEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
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

abstract class FormInitial implements MasterFormState {
  const factory FormInitial(
      {required final MasterFormEntity masterFormEntity}) = _$FormInitial;

  @override
  MasterFormEntity get masterFormEntity;
  @override
  @JsonKey(ignore: true)
  _$$FormInitialCopyWith<_$FormInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormLoadingCopyWith<$Res>
    implements $MasterFormStateCopyWith<$Res> {
  factory _$$FormLoadingCopyWith(
          _$FormLoading value, $Res Function(_$FormLoading) then) =
      __$$FormLoadingCopyWithImpl<$Res>;
  @override
  $Res call({MasterFormEntity masterFormEntity});
}

/// @nodoc
class __$$FormLoadingCopyWithImpl<$Res>
    extends _$MasterFormStateCopyWithImpl<$Res>
    implements _$$FormLoadingCopyWith<$Res> {
  __$$FormLoadingCopyWithImpl(
      _$FormLoading _value, $Res Function(_$FormLoading) _then)
      : super(_value, (v) => _then(v as _$FormLoading));

  @override
  _$FormLoading get _value => super._value as _$FormLoading;

  @override
  $Res call({
    Object? masterFormEntity = freezed,
  }) {
    return _then(_$FormLoading(
      masterFormEntity: masterFormEntity == freezed
          ? _value.masterFormEntity
          : masterFormEntity // ignore: cast_nullable_to_non_nullable
              as MasterFormEntity,
    ));
  }
}

/// @nodoc

class _$FormLoading implements FormLoading {
  const _$FormLoading({required this.masterFormEntity});

  @override
  final MasterFormEntity masterFormEntity;

  @override
  String toString() {
    return 'MasterFormState.loading(masterFormEntity: $masterFormEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormLoading &&
            const DeepCollectionEquality()
                .equals(other.masterFormEntity, masterFormEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterFormEntity));

  @JsonKey(ignore: true)
  @override
  _$$FormLoadingCopyWith<_$FormLoading> get copyWith =>
      __$$FormLoadingCopyWithImpl<_$FormLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MasterFormEntity masterFormEntity) initial,
    required TResult Function(MasterFormEntity masterFormEntity) loading,
    required TResult Function(MasterFormEntity masterFormEntity) success,
    required TResult Function(MasterFormEntity masterFormEntity) error,
  }) {
    return loading(masterFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MasterFormEntity masterFormEntity)? initial,
    TResult Function(MasterFormEntity masterFormEntity)? loading,
    TResult Function(MasterFormEntity masterFormEntity)? success,
    TResult Function(MasterFormEntity masterFormEntity)? error,
  }) {
    return loading?.call(masterFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MasterFormEntity masterFormEntity)? initial,
    TResult Function(MasterFormEntity masterFormEntity)? loading,
    TResult Function(MasterFormEntity masterFormEntity)? success,
    TResult Function(MasterFormEntity masterFormEntity)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(masterFormEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
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

abstract class FormLoading implements MasterFormState {
  const factory FormLoading(
      {required final MasterFormEntity masterFormEntity}) = _$FormLoading;

  @override
  MasterFormEntity get masterFormEntity;
  @override
  @JsonKey(ignore: true)
  _$$FormLoadingCopyWith<_$FormLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSuccessCopyWith<$Res>
    implements $MasterFormStateCopyWith<$Res> {
  factory _$$FormSuccessCopyWith(
          _$FormSuccess value, $Res Function(_$FormSuccess) then) =
      __$$FormSuccessCopyWithImpl<$Res>;
  @override
  $Res call({MasterFormEntity masterFormEntity});
}

/// @nodoc
class __$$FormSuccessCopyWithImpl<$Res>
    extends _$MasterFormStateCopyWithImpl<$Res>
    implements _$$FormSuccessCopyWith<$Res> {
  __$$FormSuccessCopyWithImpl(
      _$FormSuccess _value, $Res Function(_$FormSuccess) _then)
      : super(_value, (v) => _then(v as _$FormSuccess));

  @override
  _$FormSuccess get _value => super._value as _$FormSuccess;

  @override
  $Res call({
    Object? masterFormEntity = freezed,
  }) {
    return _then(_$FormSuccess(
      masterFormEntity: masterFormEntity == freezed
          ? _value.masterFormEntity
          : masterFormEntity // ignore: cast_nullable_to_non_nullable
              as MasterFormEntity,
    ));
  }
}

/// @nodoc

class _$FormSuccess implements FormSuccess {
  const _$FormSuccess({required this.masterFormEntity});

  @override
  final MasterFormEntity masterFormEntity;

  @override
  String toString() {
    return 'MasterFormState.success(masterFormEntity: $masterFormEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSuccess &&
            const DeepCollectionEquality()
                .equals(other.masterFormEntity, masterFormEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterFormEntity));

  @JsonKey(ignore: true)
  @override
  _$$FormSuccessCopyWith<_$FormSuccess> get copyWith =>
      __$$FormSuccessCopyWithImpl<_$FormSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MasterFormEntity masterFormEntity) initial,
    required TResult Function(MasterFormEntity masterFormEntity) loading,
    required TResult Function(MasterFormEntity masterFormEntity) success,
    required TResult Function(MasterFormEntity masterFormEntity) error,
  }) {
    return success(masterFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MasterFormEntity masterFormEntity)? initial,
    TResult Function(MasterFormEntity masterFormEntity)? loading,
    TResult Function(MasterFormEntity masterFormEntity)? success,
    TResult Function(MasterFormEntity masterFormEntity)? error,
  }) {
    return success?.call(masterFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MasterFormEntity masterFormEntity)? initial,
    TResult Function(MasterFormEntity masterFormEntity)? loading,
    TResult Function(MasterFormEntity masterFormEntity)? success,
    TResult Function(MasterFormEntity masterFormEntity)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(masterFormEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
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

abstract class FormSuccess implements MasterFormState {
  const factory FormSuccess(
      {required final MasterFormEntity masterFormEntity}) = _$FormSuccess;

  @override
  MasterFormEntity get masterFormEntity;
  @override
  @JsonKey(ignore: true)
  _$$FormSuccessCopyWith<_$FormSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormErrorCopyWith<$Res>
    implements $MasterFormStateCopyWith<$Res> {
  factory _$$FormErrorCopyWith(
          _$FormError value, $Res Function(_$FormError) then) =
      __$$FormErrorCopyWithImpl<$Res>;
  @override
  $Res call({MasterFormEntity masterFormEntity});
}

/// @nodoc
class __$$FormErrorCopyWithImpl<$Res>
    extends _$MasterFormStateCopyWithImpl<$Res>
    implements _$$FormErrorCopyWith<$Res> {
  __$$FormErrorCopyWithImpl(
      _$FormError _value, $Res Function(_$FormError) _then)
      : super(_value, (v) => _then(v as _$FormError));

  @override
  _$FormError get _value => super._value as _$FormError;

  @override
  $Res call({
    Object? masterFormEntity = freezed,
  }) {
    return _then(_$FormError(
      masterFormEntity: masterFormEntity == freezed
          ? _value.masterFormEntity
          : masterFormEntity // ignore: cast_nullable_to_non_nullable
              as MasterFormEntity,
    ));
  }
}

/// @nodoc

class _$FormError implements FormError {
  const _$FormError({required this.masterFormEntity});

  @override
  final MasterFormEntity masterFormEntity;

  @override
  String toString() {
    return 'MasterFormState.error(masterFormEntity: $masterFormEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormError &&
            const DeepCollectionEquality()
                .equals(other.masterFormEntity, masterFormEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterFormEntity));

  @JsonKey(ignore: true)
  @override
  _$$FormErrorCopyWith<_$FormError> get copyWith =>
      __$$FormErrorCopyWithImpl<_$FormError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MasterFormEntity masterFormEntity) initial,
    required TResult Function(MasterFormEntity masterFormEntity) loading,
    required TResult Function(MasterFormEntity masterFormEntity) success,
    required TResult Function(MasterFormEntity masterFormEntity) error,
  }) {
    return error(masterFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MasterFormEntity masterFormEntity)? initial,
    TResult Function(MasterFormEntity masterFormEntity)? loading,
    TResult Function(MasterFormEntity masterFormEntity)? success,
    TResult Function(MasterFormEntity masterFormEntity)? error,
  }) {
    return error?.call(masterFormEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MasterFormEntity masterFormEntity)? initial,
    TResult Function(MasterFormEntity masterFormEntity)? loading,
    TResult Function(MasterFormEntity masterFormEntity)? success,
    TResult Function(MasterFormEntity masterFormEntity)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(masterFormEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
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

abstract class FormError implements MasterFormState {
  const factory FormError({required final MasterFormEntity masterFormEntity}) =
      _$FormError;

  @override
  MasterFormEntity get masterFormEntity;
  @override
  @JsonKey(ignore: true)
  _$$FormErrorCopyWith<_$FormError> get copyWith =>
      throw _privateConstructorUsedError;
}
