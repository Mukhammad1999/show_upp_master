part of 'master_form_bloc.dart';

@freezed
class MasterFormState with _$MasterFormState {
  const factory MasterFormState({
    required MasterFormEntity masterFormEntity,
  }) = FormState;
}
