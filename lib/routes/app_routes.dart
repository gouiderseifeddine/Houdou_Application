import 'package:flutter/material.dart';
import 'package:houdou_app/presentation/choose_screen/choose_screen.dart';

import '../presentation/login_screen/login_screen.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';


class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String afterSplashScreen = '/choose_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String initialRoute = '/initialRoute';



  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        loginScreen: LoginScreen.builder,
        registerScreen: RegisterScreen.builder,
        initialRoute: SplashScreen.builder,
      };
}
