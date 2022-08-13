import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';
import 'package:master_app/features/auth/domain/repository/auth_repository.dart';

part 'sign_up_master_event.dart';
part 'sign_up_master_state.dart';
part 'sign_up_master_bloc.freezed.dart';

class SignUpMasterBloc extends Bloc<SignUpMasterEvent, SignUpMasterState> {
  SignUpMasterBloc({required AuthRepository repository})
      : _authRepository = repository,
        super(const Initial()) {
    on<SignUpMasterEvent>((event, emit) {});
    on<SignUp>(_signUp);
  }

  final AuthRepository _authRepository;

  FutureOr<void> _signUp(SignUp event, Emitter<SignUpMasterState> emit) async {
    try {} catch (e) {}
  }
}
