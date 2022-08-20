import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:master_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';
import 'package:mocktail/mocktail.dart';

class DioMock extends Mock implements Dio {}

void main() {
  final dioMock = DioMock();
  final remoteDataSource = AuthRemoteDataSourceImpl(dio: dioMock);
  final requestOptions = RequestOptions(path: '');
  const jsonMock = {
    'statusCode': 200,
    'message':
        'Response timeout error: 30000 while sending to account.register.command',
    'error': 'Unauthorized'
  };

  test('Show signUp User and return bool', () async {
    // ignore: inference_failure_on_function_invocation
    when(() => dioMock.post(any())).thenAnswer(
      (invocation) async => Response(
        statusCode: 200,
        requestOptions: requestOptions,
        data: jsonMock,
      ),
    );
    final result = await remoteDataSource.signUp(const MasterFormEntity());
    expect(result, true);
  });
}
