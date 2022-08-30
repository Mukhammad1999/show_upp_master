import 'package:master_app/features/auth/domain/entities/login_response.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';

class LoginResponseModel extends LoginResponseEntity {
  const LoginResponseModel({
    required super.id,
    required super.phone,
    required super.firstName,
    required super.lastName,
    required super.gender,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> map) {
    const gender = Gender.male;
    return LoginResponseModel(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      id: map['id'] as String,
      gender: gender.fromInt(map['gender'] as int),
      phone: map['phoneNumber'] as String,
    );
  }
}
