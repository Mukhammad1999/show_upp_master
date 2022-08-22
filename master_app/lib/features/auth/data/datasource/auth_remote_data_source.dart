import 'package:dio/dio.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';

abstract class AuthRemoteDataSource {
  Future<bool> signUp(MasterFormEntity masterFormEntity);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({required Dio dio}) : _client = dio;
  final Dio _client;

  @override
  Future<bool> signUp(MasterFormEntity masterFormEntity) async {
    final response = await _client.post(
      '/api/v1/auth/register',
      data: masterFormEntity.toJson(),
    );
    if (response.statusCode == 201) {
      return true;
    }
    return false;
  }
}
