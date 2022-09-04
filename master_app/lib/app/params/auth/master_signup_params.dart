import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:master_app/app/enums/gender.dart';

abstract class SignUpParams {
  SignUpParams({required this.phoneNumber, required this.name});

  final String phoneNumber;
  final String name;
}

//SignUp Params for Master
@JsonSerializable()
class MasterSignUpParams extends SignUpParams {
  MasterSignUpParams({
    required super.phoneNumber,
    required super.name,
    this.surname,
    this.gender,
  });
  final String? surname;
  final Gender? gender;
  Map<String, dynamic> toJson() => {
        'firstName': name,
        'lastName': surname,
        'phone': '998${phoneNumber.replaceAll(' ', '')}',
        'gender': gender!.toInt(),
      };
}
