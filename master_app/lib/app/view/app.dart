// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/navigation/navigation.dart';
import 'package:master_app/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ModularApp(
      module: NavigationModule(),
      child: MaterialApp.router(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    );
  }
}
