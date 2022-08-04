// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

abstract class SignUpFormEntity extends Equatable {
  final String? name;
  final String? phoneNumber;
  const SignUpFormEntity({
    this.name,
    this.phoneNumber,
  });
}

//entity to hold data from master form while auth
class MasterFormEntity extends SignUpFormEntity {
  const MasterFormEntity({
    this.surname,
    this.gender,
    super.name,
    super.phoneNumber,
  });
  final String? surname;
  final Gender? gender;

  MasterFormEntity copyWith({
    String? surname,
    Gender? gender,
    String? name,
    String? phoneNumber,
  }) {
    return MasterFormEntity(
      surname: surname ?? this.surname,
      gender: gender ?? this.gender,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  List<Object?> get props => [name, gender, surname, phoneNumber];
}

//entity to hold data from master form while auth
class SaloonFormEntity extends SignUpFormEntity {
  // better not touch that right now.
  // will be clear when configured on back-end
  const SaloonFormEntity({required super.name, required super.phoneNumber});

  @override
  List<Object?> get props => throw UnimplementedError();
}

enum Gender {
  male,
  female,
  other,
}
