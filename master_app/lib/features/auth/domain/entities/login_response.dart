// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';

class LoginResponseEntity extends Equatable {
  final String id;
  final String phone;
  final String firstName;
  final String lastName;
  final Gender gender;
  const LoginResponseEntity({
    required this.id,
    required this.phone,
    required this.firstName,
    required this.lastName,
    required this.gender,
  });

  @override
  List<Object> get props {
    return [
      id,
      phone,
      firstName,
      lastName,
      gender,
    ];
  }
}
