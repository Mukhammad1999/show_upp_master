part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = Authed;
  const factory AuthState.unauthed() = UnAuthed;
  const factory AuthState.unknown() = Unknown;
}
