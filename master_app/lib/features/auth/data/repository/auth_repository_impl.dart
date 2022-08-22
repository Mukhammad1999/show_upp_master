import 'package:master_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:master_app/features/auth/domain/entities/sign_up_result_entity.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';
import 'package:master_app/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({required AuthRemoteDataSource authRemoteDataSource})
      : _authRemoteDataSource = authRemoteDataSource;

  final AuthRemoteDataSource _authRemoteDataSource;
  @override
  Future<SignUpResult> signUp(MasterFormEntity masterFormEntity) async {
    return await _authRemoteDataSource.signUp(masterFormEntity);
  }
}
