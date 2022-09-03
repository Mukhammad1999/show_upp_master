import 'package:master_app/app/params/auth/login_params.dart';
import 'package:master_app/app/params/auth/master_signup_params.dart';
import 'package:master_app/features/auth/domain/entities/login_response.dart';
import 'package:master_app/features/auth/domain/entities/sign_up_result_entity.dart';

abstract class AuthRepository {
  Future<SignUpResult> signUp(MasterSignUpParams signUpParams);
  Future<void> logOut();
  Future<LoginResponseEntity> login(
    LoginParams loginParams,
  );
  Future<bool> getAuthStatus();
}
