import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';

abstract class AuthRepository {
  Future<bool> signUp(MasterFormEntity masterFormEntity);
}
