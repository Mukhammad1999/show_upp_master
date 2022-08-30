// ignore_for_file: library_private_types_in_public_api

class TranslationStrings {
  static _Role role = _Role();
  static _Auth auth = _Auth();
  static _Common common = _Common();
}

class _Role {
  final String chooseRoleQuestion = 'role.choose_role_question';
  final String master = 'role.master';
  final String saloon = 'role.saloon';
}

class _Auth {
  final String yourData = 'auth.your_data';
  final String fillInYourData = 'auth.fill_in_your_data_des';
  final String name = 'auth.name';
  final String surname = 'auth.surname';
  final String male = 'auth.male';
  final String female = 'auth.female';
  final String nonBinary = 'auth.non-binary';
  final String fillInMasterForm = 'auth.fill_in_master_form_description';
  final String confirm = 'auth.confirm';
  final String numberVerification = 'auth.number_verification';
  final String numberVerificationDescription = 'auth.number_description';
  final String logIn = 'auth.log_in';
  final String signUp = 'auth.sign_up';
  final String or = 'auth.or';
  final String saloonWorker = 'auth.saloon_worker';
  final String onFreelance = 'auth.on_freelance';
}

class _Common {
  final String search = 'common.search';
}
