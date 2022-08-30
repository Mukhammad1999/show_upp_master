// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:master_app/localization/translation_strings.dart';

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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastName': surname,
      'firstName': name,
      'phone': '998${phoneNumber?.replaceAll(' ', '')}',
      'gender': gender?.toInt(),
    };
  }

  factory MasterFormEntity.fromMap(Map<String, dynamic> map) {
    const gender = Gender.female;
    return MasterFormEntity(
      surname: map['surname'] != null ? map['surname'] as String : null,
      name: map['firstName'] != null ? map['firstName'] as String : null,
      gender: map['gender'] != null
          ? gender.fromString(map['gender'] as String)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MasterFormEntity.fromJson(String source) =>
      MasterFormEntity.fromMap(json.decode(source) as Map<String, dynamic>);
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
  other;

  @override
  String toString() {
    switch (this.name) {
      case 'male':
        return 'Male';
      case 'female':
        return 'Female';
      case 'other':
        return 'Not-Known';
      default:
        return 'male';
    }
  }

  int toInt() {
    switch (this.name) {
      case 'male':
        return 1;
      case 'female':
        return 2;
      case 'other':
        return 0;
      default:
        return 2;
    }
  }

  Gender fromInt(int genderNumber) {
    switch (genderNumber) {
      case 1:
        return Gender.male;
      case 2:
        return Gender.female;
      case 0:
        return Gender.other;

      default:
        return Gender.female;
    }
  }
}

extension GenderExtension on Gender {
  String get genderToString {
    switch (this) {
      case Gender.male:
        return TranslationStrings.auth.male.tr();
      case Gender.female:
        return TranslationStrings.auth.female.tr();
      case Gender.other:
        return TranslationStrings.auth.nonBinary.tr();
    }
  }

  Gender fromString(String incomingString) {
    switch (incomingString) {
      case 'Male':
        return Gender.male;
      case 'Female':
        return Gender.female;
      case 'Not-Known':
        return Gender.other;
      default:
        return Gender.male;
    }
  }
}
