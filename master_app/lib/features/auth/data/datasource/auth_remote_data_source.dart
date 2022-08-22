import 'package:dio/dio.dart';
import 'package:master_app/features/auth/data/models/sign_up_result_model.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';

abstract class AuthRemoteDataSource {
  Future<SignUpResultModel> signUp(MasterFormEntity masterFormEntity);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({required Dio dio}) : _client = dio;
  final Dio _client;

  @override
  Future<SignUpResultModel> signUp(MasterFormEntity masterFormEntity) async {
    final response = await _client.post(
      'auth/register',
      data: masterFormEntity.toJson(),
    );
    return SignUpResultModel.fromJson(response.data['body'] as String);
  }
}
