// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:master_app/app/app.dart';
import 'package:master_app/bootstrap.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await bootstrap(
    () => const App(),
  );
}
