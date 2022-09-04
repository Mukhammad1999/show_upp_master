import 'package:master_app/app/http_client/clients/rest_api_client.dart';
import 'package:master_app/app/params/auth/master_signup_params.dart';
import 'package:master_app/features/auth/data/models/sign_up_result_model.dart';
import 'package:master_app/features/auth/domain/entities/login_response.dart';

abstract class AuthRemoteDataSource {
  Future<SignUpResultModel> signUp(MasterSignUpParams signUpParams);
  Future<LoginResponseEntity> logIn();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({required RestClient restApi}) : _client = restApi;
  final RestClient _client;

  @override
  Future<SignUpResultModel> signUp(MasterSignUpParams signUpParams) async {
    final response = await _client.signUpMaster(signUpParams);
    final data = response.data;
    return data.signUpResultModel;
  }

  @override
  Future<LoginResponseEntity> logIn() {
    throw UnimplementedError();
  }
}
