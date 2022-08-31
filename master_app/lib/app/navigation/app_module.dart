import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/navigation/auth_module.dart';
import 'package:master_app/app/navigation/route_names.dart';

class NavigationModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute<AuthModule>(
          RouteName.authModule,
          module: AuthModule(),
        )
      ];
}
