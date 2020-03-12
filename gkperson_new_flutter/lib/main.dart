import 'package:flutter/material.dart';
import 'package:gkperson_new_flutter/page/main_home_page.dart';
import 'package:gkperson_new_flutter/common/style/sup_style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColorDark: SupColors.COLOR_PRIMARY_DARK,
        primaryColor: SupColors.COLOR_PRIMARY,
        accentColor: SupColors.COLOR_ACCENT,
      ),
      home: MainHomePage(),
    );
  }
}
