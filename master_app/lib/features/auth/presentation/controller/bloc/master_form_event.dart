part of 'master_form_bloc.dart';

@freezed
class MasterFormEvent with _$MasterFormEvent {
  const factory MasterFormEvent.update({
    required UpdateMasterForm updateEvent,
  }) = UpdateForm;
  const factory MasterFormEvent.submit() = SubmitForm;
}

@freezed
class UpdateMasterForm with _$UpdateMasterForm {
  const factory UpdateMasterForm.name({required String? name}) = UpdateName;
  const factory UpdateMasterForm.surname({required String? surname}) =
      UpdateSurname;
  const factory UpdateMasterForm.phoneNumber({required String? phoneNumber}) =
      UpdatePhoneNumber;
  const factory UpdateMasterForm.gender({required Gender? gender}) =
      UpdateGender;
}
