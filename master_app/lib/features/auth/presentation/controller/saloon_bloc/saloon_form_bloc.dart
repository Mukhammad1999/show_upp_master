import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';

part 'saloon_form_bloc.freezed.dart';
part 'saloon_form_event.dart';
part 'saloon_form_state.dart';

class SaloonBloc extends Bloc<SaloonFormEvent, SaloonFormState> {
  SaloonBloc() : super(const FormInitial()) {
    on<SaloonFormEvent>((event, emit) {});
    on<UpdateForm>(_updateForm);
    on<SubmitForm>(_submitForm);
  }

  FutureOr<void> _updateForm(UpdateForm event, Emitter<SaloonFormState> emit) {
    state.maybeMap(
      orElse: () {},
      initial: (s) {
        emit(
          event.updateEvent.when(
            name: (name) => SaloonFormState.update(
                saloonFormEntity:
                    SaloonFormEntity(name: name, phoneNumber: '')),
            location: (location) => const SaloonFormState.update(
                saloonFormEntity: SaloonFormEntity(name: '', phoneNumber: '')),
            phoneNumber: (number) => SaloonFormState.update(
                saloonFormEntity:
                    SaloonFormEntity(name: '', phoneNumber: number)),
          ),
        );
      },
      update: (s) {
        emit(
          event.updateEvent.when(
            name: (name) => s.copyWith(
              saloonFormEntity: s.saloonFormEntity.copyWith(name: name),
            ),
            location: (location) => s,
            phoneNumber: (number) => s.copyWith(
              saloonFormEntity:
                  s.saloonFormEntity.copyWith(phoneNumber: number),
            ),
          ),
        );
      },
    );
  }

  FutureOr<void> _submitForm(
    SubmitForm event,
    Emitter<SaloonFormState> emit,
  ) async {
    emit(const FormLoading());
    try {} catch (e) {
      log(e.toString());
      emit(const FormError());
    }
  }
}
