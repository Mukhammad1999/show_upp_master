import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/navigation/auth_module.dart';
import 'package:master_app/app/navigation/route_names.dart';
import 'package:master_app/app/ui/presentation/pages/choose_location_page.dart';

class NavigationModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute<AuthModule>(
          RouteName.authModule,
          module: AuthModule(),
        ),
        //rework here
        ChildRoute<ChooseLocationPage>(
          RouteName.chooseLocationPage,
          child: (context, args) => ChooseLocationPage(
            // ignore: avoid_dynamic_calls
            title: args.data['title'] as String,
          ),
        )
      ];
}
