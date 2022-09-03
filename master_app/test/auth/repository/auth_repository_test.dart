import 'package:dio/dio.dart';

import 'package:master_app/app/http_client/clients/rest_api_client.dart';
import 'package:master_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:mocktail/mocktail.dart';

class MockRestApiClient extends Mock implements RestClient {}

void main() {
  final restClient = MockRestApiClient();
  final remoteDataSource = AuthRemoteDataSourceImpl(restApi: restClient);
  final requestOptions = RequestOptions(path: '');
  const jsonMock = {
    'statusCode': 200,
    'message':
        'Response timeout error: 30000 while sending to account.register.command',
    'error': 'Unauthorized'
  };
}
