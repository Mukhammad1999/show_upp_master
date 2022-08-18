import 'package:dio/dio.dart';

abstract class AuthRemoteDataSource {
  Future<bool> signUp();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({required Dio dio}) : _client = dio;
  final Dio _client;

  @override
  Future<bool> signUp() async {
    Response response = await _client.post(
      '/api/v1/auth/register',
    );
    if (response.statusCode == 200) {
      if (response.data['statusCode'] == 200) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }
}
