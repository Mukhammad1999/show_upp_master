import 'package:master_app/features/auth/domain/entities/sign_up_result_entity.dart';

class SignUpResultModel extends SignUpResult {
  const SignUpResultModel({
    required super.message,
    required super.additionalInfo,
    super.verificationCode,
    super.isSuccessful = false,
  });

  factory SignUpResultModel.fromJson({
    required Map<String, dynamic> json,
    bool? isSuccessFull,
  }) {
    return SignUpResultModel(
      message: json['message'] as String,
      additionalInfo: json['additionalInfo'] as String,
      verificationCode: json['verificationCode'] != null
          ? (json['verificationCode'] as int)
          : 0,
      isSuccessful: isSuccessFull ?? false,
    );
  }
}
