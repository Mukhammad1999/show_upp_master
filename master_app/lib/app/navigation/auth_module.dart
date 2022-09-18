import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/constants/constants.dart';
import 'package:master_app/app/http_client/clients/rest_api_client.dart';
import 'package:master_app/app/http_client/interceptor.dart';
import 'package:master_app/app/navigation/route_names.dart';
import 'package:master_app/app/ui/presentation/pages/choose_role_page.dart';
import 'package:master_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:master_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:master_app/features/auth/domain/repository/auth_repository.dart';
import 'package:master_app/features/auth/presentation/controller/bloc/master_form_bloc.dart';
import 'package:master_app/features/auth/presentation/controller/saloon_bloc/saloon_form_bloc.dart';
import 'package:master_app/features/auth/presentation/pages/login_page.dart';
import 'package:master_app/features/auth/presentation/pages/master_pages/choose_saloon_page.dart';
import 'package:master_app/features/auth/presentation/pages/master_pages/master_signup_form.dart';
import 'package:master_app/features/auth/presentation/pages/master_pages/worker_or_freelancer.dart';
import 'package:master_app/features/auth/presentation/pages/otp_page.dart';
import 'package:master_app/features/auth/presentation/pages/saloon_form.dart';
import 'package:master_app/features/auth/presentation/pages/search_employees.dart';
import 'package:master_app/features/auth/presentation/pages/specify_employees.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        //Remote Repository for Auth Repository
        Bind.lazySingleton<AuthRemoteDataSource>(
          (i) => AuthRemoteDataSourceImpl(
            restApi: Modular.get<RestClient>(),
          ),
        ),

        Bind.lazySingleton(
          (i) => RestClient(
            Modular.get<Dio>(),
          ),
        ),
        //will return implementation of Auth Repository
        Bind.lazySingleton<AuthRepository>(
          (i) => AuthRepositoryImpl(
            authRemoteDataSource: Modular.get<AuthRemoteDataSource>(),
          ),
        ),
        //Dio
        Bind.lazySingleton<Dio>(
          (i) => Dio(
            BaseOptions(
              baseUrl: Constants.baseUrl,
              extra: {
                'withCredentials': true,
              },
            ),
          )..interceptors.add(
              ShowUppInterceptor(),
            ),
        ),
        //Rest Api Client
        Bind.lazySingleton<Dio>(
          (i) => Dio(
            BaseOptions(
              baseUrl: Constants.baseUrl,
              extra: {
                'withCredentials': true,
              },
            ),
          )..interceptors.addAll(
              [
                ShowUppInterceptor(),
                LogInterceptor(),
              ],
            ),
        ),
        Bind((i) => SaloonBloc()),
      ];

  @override
  List<ModularRoute> get routes => [
        //configuration for choosing the role before registration.
        ChildRoute<ChooseRolePage>(
          RouteName.chooseRolePage,
          child: (context, args) => const ChooseRolePage(),
        ),

        //page configuration for navigation to master form while auth
        ChildRoute<MasterFormRegistration>(
          RouteName.masterFormPage,
          child: (context, args) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => MasterFormBloc(
                  authRepository: Modular.get<AuthRepository>(),
                ),
              ),
            ],
            child: const MasterFormRegistration(),
          ),
        ),

        //directs user to OTP Page
        ChildRoute<OtpPage>(
          RouteName.otpPage,
          child: (context, args) => const OtpPage(),
        ),

        ChildRoute<WorkerOrFreelancerPage>(
          RouteName.workerOrFreelancerPage,
          child: (context, args) => const WorkerOrFreelancerPage(),
        ),
        ChildRoute<ChooseSaloonPage>(
          RouteName.chooseSaloonPage,
          child: (context, args) => const ChooseSaloonPage(),
          transition: TransitionType.downToUp,
        ),

        ChildRoute<LoginPage>(
          RouteName.loginPage,
          child: (context, args) => const LoginPage(),
        ),

        //navigation to saloon details page
        ChildRoute<SaloonFormPage>(
          RouteName.saloonFormPage,
          child: (context, args) => SaloonFormPage(),
        ),

        //navigation to specify employees page for saloon
        ChildRoute<SaloonFormPage>(
          RouteName.specifyEmployeesPage,
          child: (context, args) => SpecifyEmployees(),
        ),

        //navigation to saloon search employees page
        ChildRoute<SaloonFormPage>(
          RouteName.searchEmployeesPage,
          child: (context, args) => SearchEmployees(),
        ),
      ];
}
