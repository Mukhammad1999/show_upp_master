part of 'saloon_form_bloc.dart';

@freezed
class SaloonFormEvent with _$SaloonFormEvent {
  const factory SaloonFormEvent.update({
    required UpdateSaloonForm updateEvent,
  }) = UpdateForm;
  const factory SaloonFormEvent.submit() = SubmitForm;
}

@freezed
class UpdateSaloonForm with _$UpdateSaloonForm {
  const factory UpdateSaloonForm.name({required String? name}) = UpdateName;
  const factory UpdateSaloonForm.location({required String? location}) =
      UpdateLocation;
  const factory UpdateSaloonForm.phoneNumber({required String? phoneNumber}) =
      UpdatePhoneNumber;
}
