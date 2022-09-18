// ignore_for_file: library_private_types_in_public_api

class TranslationStrings {
  static _Role role = _Role();
  static _Auth auth = _Auth();
  static _Common common = _Common();
  static _Search search = _Search();
  static _Contacts contacts = _Contacts();
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
  final String location = 'auth.location';
  final String saloonInfo = 'auth.saloon_info';
  final String fillInMasterForm = 'auth.fill_in_master_form_description';
  final String confirm = 'auth.confirm';
  final String numberVerification = 'auth.number_verification';
  final String numberVerificationDescription = 'auth.number_description';
  final String logIn = 'auth.log_in';
  final String signUp = 'auth.sign_up';
  final String or = 'auth.or';
  final String saloonWorker = 'auth.saloon_worker';
  final String onFreelance = 'auth.on_freelance';
  final String possibleSaloons = 'auth.possible_saloon';
  final String specifyEmployeesDescription =
      'auth.specify_employees_description';
}

class _Common {
  final String specifyLater = 'common.specify_later';
  final String done = 'common.done';
}

class _Search {
  final String search = 'search.search';
  final String allContacts = 'search.all_contacts';
  final String possibleOptions = 'search.possible_options';
  final String importFromFb = 'search.import_facebook';
  final String importFromTwitter = 'search.import_twitter';
}

class _Contacts {
  final String add = 'contacts.add';
  final String added = 'contacts.added';
}
