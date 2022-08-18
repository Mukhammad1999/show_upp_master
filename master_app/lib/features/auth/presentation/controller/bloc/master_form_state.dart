part of 'master_form_bloc.dart';

@freezed
class MasterFormState with _$MasterFormState {
  const factory MasterFormState.initial({
    required MasterFormEntity masterFormEntity,
  }) = FormInitial;
  const factory MasterFormState.loading({
    required MasterFormEntity masterFormEntity,
  }) = FormLoading;
  const factory MasterFormState.success({
    required MasterFormEntity masterFormEntity,
  }) = FormSuccess;
  const factory MasterFormState.error({
    required MasterFormEntity masterFormEntity,
  }) = FormError;
}
