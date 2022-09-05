part of 'saloon_form_bloc.dart';

@freezed
class SaloonFormState with _$SaloonFormState {
  const factory SaloonFormState.initial() = FormInitial;

  const factory SaloonFormState.loading() = FormLoading;

  const factory SaloonFormState.update({
    required SaloonFormEntity saloonFormEntity,
  }) = FormUpdate;

  const factory SaloonFormState.success({
    required SaloonFormEntity saloonFormEntity,
  }) = FormSuccess;

  const factory SaloonFormState.error() = FormError;
}
