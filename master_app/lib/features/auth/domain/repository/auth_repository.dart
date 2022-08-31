import 'package:master_app/app/params/auth/login_params.dart';
import 'package:master_app/features/auth/domain/entities/login_response.dart';
import 'package:master_app/features/auth/domain/entities/sign_up_result_entity.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';

abstract class AuthRepository {
  Future<SignUpResult> signUp(MasterFormEntity masterFormEntity);
  Future<void> logOut();
  Future<LoginResponseEntity> login(
    LoginParams loginParams,
  );

  Future<bool> getAuthStatus();
}
