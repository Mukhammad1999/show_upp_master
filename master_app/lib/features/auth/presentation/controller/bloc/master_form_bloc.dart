import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';
import 'package:master_app/features/auth/domain/repository/auth_repository.dart';

part 'master_form_bloc.freezed.dart';
part 'master_form_event.dart';
part 'master_form_state.dart';

class MasterFormBloc extends Bloc<MasterFormEvent, MasterFormState> {
  MasterFormBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(
          const MasterFormState(
            masterFormEntity: MasterFormEntity(
              name: '',
              surname: '',
              phoneNumber: '',
              gender: Gender.female,
            ),
          ),
        ) {
    on<MasterFormEvent>((event, emit) {});
    on<UpdateForm>(_updateForm);
    on<SubmitForm>(_submitForm);
  }

  final AuthRepository _authRepository;

  FutureOr<void> _updateForm(UpdateForm event, Emitter<MasterFormState> emit) {
    emit(
      state.copyWith(
        masterFormEntity: event.updateEvent.when(
          name: (name) => state.masterFormEntity.copyWith(name: name),
          surname: (surname) =>
              state.masterFormEntity.copyWith(surname: surname),
          phoneNumber: (phoneNumber) =>
              state.masterFormEntity.copyWith(phoneNumber: phoneNumber),
          gender: (gender) => state.masterFormEntity.copyWith(gender: gender),
        ),
      ),
    );
  }

  FutureOr<void> _submitForm(SubmitForm event, Emitter<MasterFormState> emit) {
    //do smth
  }
}
