import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/navigation/app_module.dart';
import 'package:master_app/app/ui/style/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('ru'),
        Locale('en'),
        Locale('uz'),
      ],
      path: 'assets/l10n',
      fallbackLocale: const Locale('ru'),
      useOnlyLangCode: true,
      child: ModularApp(
        module: NavigationModule(),
        child: Builder(
          builder: (context) {
            return MaterialApp.router(
              theme: AppTheme.lightTheme,
              locale: context.locale,
              routerDelegate: Modular.routerDelegate,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              routeInformationParser: Modular.routeInformationParser,
            );
          },
        ),
      ),
    );
  }
}
