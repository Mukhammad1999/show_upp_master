import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:master_app/features/auth/domain/repository/auth_repository.dart';
import 'package:master_app/features/auth/presentation/controller/auth_bloc/bloc/auth_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late final AuthRepository mockRepository;
  late final AuthBloc authBLoc;
  group('AuthBLoC ', () {
    setUp(() {
      mockRepository = MockAuthRepository();
      authBLoc = AuthBloc(
        authRepository: mockRepository,
      );
    });

    setUpAll(() {});

    test('Firstly Auth Bloc has to have ', () {
      expect(authBLoc.state, const AuthState.unknown());
    });

    // blocTest(
    //   'Has to emit authed when the user has registered before',
    //   build: () => AuthBloc(
    //     authRepository: mockRepository,
    //   ),
    //   act: (AuthBloc bloc) => bloc.add(
    //     const CheckAuthStatus(),
    //   ),
    //   expect: () => [
    //     const AuthState.authenticated(),
    //   ],
    // );
  });
}
