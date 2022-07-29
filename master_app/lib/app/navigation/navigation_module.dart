import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/ui/presentation/pages/choose_role_page.dart';

class NavigationModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        //configuration for choosing the role before registration.
        ChildRoute<ChooseRolePage>(
          '/',
          child: (context, args) => const ChooseRolePage(),
        ),
      ];
}
