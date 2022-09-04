// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$CheckAuthStatusCopyWith<$Res> {
  factory _$$CheckAuthStatusCopyWith(
          _$CheckAuthStatus value, $Res Function(_$CheckAuthStatus) then) =
      __$$CheckAuthStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthStatusCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$CheckAuthStatusCopyWith<$Res> {
  __$$CheckAuthStatusCopyWithImpl(
      _$CheckAuthStatus _value, $Res Function(_$CheckAuthStatus) _then)
      : super(_value, (v) => _then(v as _$CheckAuthStatus));

  @override
  _$CheckAuthStatus get _value => super._value as _$CheckAuthStatus;
}

/// @nodoc

class _$CheckAuthStatus implements CheckAuthStatus {
  const _$CheckAuthStatus();

  @override
  String toString() {
    return 'AuthEvent.checkAuthStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuthStatus,
  }) {
    return checkAuthStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
  }) {
    return checkAuthStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuthStatus,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAuthStatus value) checkAuthStatus,
  }) {
    return checkAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
  }) {
    return checkAuthStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAuthStatus value)? checkAuthStatus,
    required TResult orElse(),
  }) {
    if (checkAuthStatus != null) {
      return checkAuthStatus(this);
    }
    return orElse();
  }
}

abstract class CheckAuthStatus implements AuthEvent {
  const factory CheckAuthStatus() = _$CheckAuthStatus;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthed,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthed,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthed,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authed value) authenticated,
    required TResult Function(UnAuthed value) unauthed,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authed value)? authenticated,
    TResult Function(UnAuthed value)? unauthed,
    TResult Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authed value)? authenticated,
    TResult Function(UnAuthed value)? unauthed,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$AuthedCopyWith<$Res> {
  factory _$$AuthedCopyWith(_$Authed value, $Res Function(_$Authed) then) =
      __$$AuthedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$AuthedCopyWith<$Res> {
  __$$AuthedCopyWithImpl(_$Authed _value, $Res Function(_$Authed) _then)
      : super(_value, (v) => _then(v as _$Authed));

  @override
  _$Authed get _value => super._value as _$Authed;
}

/// @nodoc

class _$Authed implements Authed {
  const _$Authed();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthed,
    required TResult Function() unknown,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthed,
    TResult Function()? unknown,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthed,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authed value) authenticated,
    required TResult Function(UnAuthed value) unauthed,
    required TResult Function(Unknown value) unknown,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authed value)? authenticated,
    TResult Function(UnAuthed value)? unauthed,
    TResult Function(Unknown value)? unknown,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authed value)? authenticated,
    TResult Function(UnAuthed value)? unauthed,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authed implements AuthState {
  const factory Authed() = _$Authed;
}

/// @nodoc
abstract class _$$UnAuthedCopyWith<$Res> {
  factory _$$UnAuthedCopyWith(
          _$UnAuthed value, $Res Function(_$UnAuthed) then) =
      __$$UnAuthedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$UnAuthedCopyWith<$Res> {
  __$$UnAuthedCopyWithImpl(_$UnAuthed _value, $Res Function(_$UnAuthed) _then)
      : super(_value, (v) => _then(v as _$UnAuthed));

  @override
  _$UnAuthed get _value => super._value as _$UnAuthed;
}

/// @nodoc

class _$UnAuthed implements UnAuthed {
  const _$UnAuthed();

  @override
  String toString() {
    return 'AuthState.unauthed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthed,
    required TResult Function() unknown,
  }) {
    return unauthed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthed,
    TResult Function()? unknown,
  }) {
    return unauthed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthed,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unauthed != null) {
      return unauthed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authed value) authenticated,
    required TResult Function(UnAuthed value) unauthed,
    required TResult Function(Unknown value) unknown,
  }) {
    return unauthed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authed value)? authenticated,
    TResult Function(UnAuthed value)? unauthed,
    TResult Function(Unknown value)? unknown,
  }) {
    return unauthed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authed value)? authenticated,
    TResult Function(UnAuthed value)? unauthed,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthed != null) {
      return unauthed(this);
    }
    return orElse();
  }
}

abstract class UnAuthed implements AuthState {
  const factory UnAuthed() = _$UnAuthed;
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, (v) => _then(v as _$Unknown));

  @override
  _$Unknown get _value => super._value as _$Unknown;
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown();

  @override
  String toString() {
    return 'AuthState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthed,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthed,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthed,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authed value) authenticated,
    required TResult Function(UnAuthed value) unauthed,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authed value)? authenticated,
    TResult Function(UnAuthed value)? unauthed,
    TResult Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authed value)? authenticated,
    TResult Function(UnAuthed value)? unauthed,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements AuthState {
  const factory Unknown() = _$Unknown;
}
