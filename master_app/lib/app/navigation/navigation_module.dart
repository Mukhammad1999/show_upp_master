import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/navigation/route_names.dart';
import 'package:master_app/app/ui/presentation/pages/choose_role_page.dart';
import 'package:master_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:master_app/features/auth/domain/repository/auth_repository.dart';
import 'package:master_app/features/auth/presentation/controller/bloc/master_form_bloc.dart';
import 'package:master_app/features/auth/presentation/pages/master_app_form.dart';

class NavigationModule extends Module {
  @override
  List<Bind> get binds => [
        //will return implementation of Auth Repository
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl()),
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
          child: (context, args) => BlocProvider(
            create: (context) =>
                MasterFormBloc(authRepository: Modular.get<AuthRepository>()),
            child: const MasterFormRegistration(),
          ),
        ),
      ];
}
