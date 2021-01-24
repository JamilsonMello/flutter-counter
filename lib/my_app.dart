import 'package:flutter/material.dart';
import 'package:myapp/app_controller.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) => MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: AppController.instance.changedTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: Home()));
  }
}
