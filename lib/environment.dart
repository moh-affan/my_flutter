import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter/config/ioc.dart';

class Environment {
  static setup() async {
    // lock orientation position
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    // transparent status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    Ioc.setupIocDependency();
  }
}
