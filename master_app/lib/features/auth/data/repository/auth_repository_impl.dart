import 'package:master_app/app/params/auth/login_params.dart';
import 'package:master_app/app/params/auth/master_signup_params.dart';
import 'package:master_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:master_app/features/auth/domain/entities/login_response.dart';
import 'package:master_app/features/auth/domain/entities/sign_up_result_entity.dart';
import 'package:master_app/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({required AuthRemoteDataSource authRemoteDataSource})
      : _authRemoteDataSource = authRemoteDataSource;

  final AuthRemoteDataSource _authRemoteDataSource;

  @override
  Future<SignUpResult> signUp(MasterSignUpParams signUpParams) async {
    return _authRemoteDataSource.signUp(signUpParams);
  }

  @override
  Future<void> logOut() {
    throw UnimplementedError();
  }

  @override
  Future<LoginResponseEntity> login(LoginParams loginParams) {
    throw UnimplementedError();
  }

  @override
  Future<bool> getAuthStatus() {
    throw UnimplementedError();
  }
}
