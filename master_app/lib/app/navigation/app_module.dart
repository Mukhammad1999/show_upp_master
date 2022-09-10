import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/navigation/auth_module.dart';
import 'package:master_app/app/navigation/route_names.dart';
import 'package:master_app/app/ui/presentation/controllers/location_bloc/bloc/location_bloc.dart';
import 'package:master_app/app/ui/presentation/pages/choose_location_page.dart';
import 'package:master_app/app/utils/service/location_service.dart';

class NavigationModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton((i) => LocationService()),
        Bind.factory((i) => LocationBloc(locationService: Modular.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute<AuthModule>(
          RouteName.authModule,
          module: AuthModule(),
        ),
        //rework here
        ChildRoute<ChooseLocationPage>(
          RouteName.chooseLocationPage,
          child: (context, args) => BlocProvider(
            create: (context) => Modular.get<LocationBloc>(),
            child: ChooseLocationPage(
              // ignore: avoid_dynamic_calls
              title: args.data['title'] as String,
            ),
          ),
        )
      ];
}
