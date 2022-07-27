//Navigation class

import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/ui/pages/choose_role_page.dart';

class NavigationModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        //pushes choose role page, where user has to choose his role ( saloon, barber)
        ChildRoute<ChooseRolePage>(
          '/',
          child: (context, args) => const ChooseRolePage(),
        ),
      ];
}
