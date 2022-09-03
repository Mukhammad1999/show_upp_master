import 'package:equatable/equatable.dart';
import 'package:master_app/features/auth/data/models/sign_up_result_model.dart';

class SignUpResponseModel extends Equatable {
  const SignUpResponseModel({
    required this.version,
    required this.statusCode,
    required this.signUpResultModel,
  });

  factory SignUpResponseModel.fromJson(Map<String, dynamic> map) {
    return SignUpResponseModel(
      version: map['version'] as String,
      statusCode: map['statusCode'] as int,
      signUpResultModel: SignUpResultModel.fromJson(
        json: map['body'] as Map<String, dynamic>,
        isSuccessFull: (map['statusCode'] as int) == 201,
      ),
    );
  }
  final String version;
  final int statusCode;
  final SignUpResultModel signUpResultModel;

  @override
  List<Object> get props => [
        version,
        statusCode,
        signUpResultModel,
      ];
}
