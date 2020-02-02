// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:cupertino_app/cupertino/data/app_state.dart';
import 'package:cupertino_app/cupertino/data/preferrence.dart';
import 'package:cupertino_app/cupertino/screens/main.dart';
import 'package:cupertino_app/cupertino/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;
import 'package:scoped_model/scoped_model.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    ScopedModel<AppState>(
      model: AppState(),
      child: ScopedModel<Preferences>(
        model: Preferences()..load(),
        child: CupertinoApp(
          debugShowCheckedModeBanner: false,
          color: Styles.appBackground,
          home: VaggiesMain(),
        ),
      ),
    ),
  );
}