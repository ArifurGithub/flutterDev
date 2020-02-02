import 'package:cupertino_app/cupertino/data/app_state.dart';
import 'package:cupertino_app/cupertino/data/preferrence.dart';
import 'package:cupertino_app/cupertino/screens/main.dart';
import 'package:cupertino_app/cupertino/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
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

class MyMenuButton extends StatelessWidget {
  final String title;
  final VoidCallback actionTap;

  MyMenuButton({this.title, this.actionTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
      child: CupertinoButton.filled(
        child: new Text(title),
        onPressed: actionTap,
      ),
    );
  }
}