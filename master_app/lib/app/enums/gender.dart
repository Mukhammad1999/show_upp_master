import 'package:easy_localization/easy_localization.dart';
import 'package:master_app/localization/translation_strings.dart';

enum Gender {
  male,
  female,
  other;

  @override
  String toString() {
    switch (name) {
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
    switch (name) {
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
