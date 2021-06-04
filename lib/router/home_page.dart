import 'package:flutter/material.dart';

import '../main.dart';

class HomePage extends Page {
  final VoidCallback onTap;

  HomePage({@required this.onTap}) : super(key: ValueKey('HomePage'));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this,
        builder: (BuildContext context) {
          print("rebuilding page");
          return HomeScreen(onTap: onTap);
        });
  }
}
