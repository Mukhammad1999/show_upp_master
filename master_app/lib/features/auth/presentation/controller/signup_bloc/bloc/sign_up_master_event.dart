part of 'sign_up_master_bloc.dart';

@freezed
class SignUpMasterEvent with _$SignUpMasterEvent {
  const factory SignUpMasterEvent.sigUp(
      {required MasterFormEntity masterFormEntity}) = SignUp;
}
