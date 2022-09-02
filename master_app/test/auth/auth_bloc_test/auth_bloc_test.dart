import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:master_app/app/enums/gender.dart';
import 'package:master_app/app/params/auth/login_params.dart';
import 'package:master_app/features/auth/domain/entities/login_response.dart';
import 'package:master_app/features/auth/domain/repository/auth_repository.dart';
import 'package:master_app/features/auth/presentation/controller/auth_bloc/bloc/auth_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late final AuthRepository mockRepository;
  late final AuthBloc authBLoc;
  const loginReposne = LoginResponseEntity(
    id: 'o312v132cxd12',
    phone: '+998(XX)XXX-XX-XX',
    firstName: 'Ravshan',
    lastName: 'Tester',
    gender: Gender.male,
  );
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

    blocTest(
      'Has to emit authed when the user is already authed before',
      setUp: () {
        when(mockRepository.getAuthStatus).thenAnswer(
          (invocation) async => true,
        );
      },
      build: () => AuthBloc(
        authRepository: mockRepository,
      ),
      act: (AuthBloc bloc) => bloc.add(
        const CheckAuthStatus(),
      ),
      expect: () => [
        const AuthState.authenticated(),
      ],
    );

    blocTest(
      'Has to emit unAuthed when the user is not signed  before',
      setUp: () {
        when(mockRepository.getAuthStatus).thenAnswer(
          (invocation) async => false,
        );
      },
      build: () => AuthBloc(
        authRepository: mockRepository,
      ),
      act: (AuthBloc bloc) => bloc.add(
        const CheckAuthStatus(),
      ),
      expect: () => [
        const AuthState.unauthed(),
      ],
    );
  });
}
