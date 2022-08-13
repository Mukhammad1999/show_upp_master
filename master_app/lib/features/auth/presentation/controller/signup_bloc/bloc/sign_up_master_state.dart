part of 'sign_up_master_bloc.dart';

@freezed
class SignUpMasterState with _$SignUpMasterState {
  const factory SignUpMasterState.initial() = Initial;
  const factory SignUpMasterState.loading() = Loading;
  const factory SignUpMasterState.success() = Success;
  const factory SignUpMasterState.error() = SignUpError;
}
