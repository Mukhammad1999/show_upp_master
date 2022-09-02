import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:master_app/app/params/auth/login_params.dart';
import 'package:master_app/features/auth/domain/repository/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const Unknown()) {
    on<AuthEvent>((event, emit) {});
    on<CheckAuthStatus>(_checAuthStatus);
  }

  final AuthRepository _authRepository;

  FutureOr<void> _checAuthStatus(
      CheckAuthStatus event, Emitter<AuthState> emit) async {
    try {
      final isAuthed = await _authRepository.getAuthStatus();
      if (isAuthed) {
        emit(const Authed());
      } else {
        emit(const UnAuthed());
      }
    } catch (e) {
      emit(const UnAuthed());
    }
  }
}
