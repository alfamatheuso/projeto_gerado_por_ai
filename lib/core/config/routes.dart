import 'package:flutter/material.dart';
import '../../features/login/page/login_page.dart';
import '../../features/home/page/home_page.dart';

class AppRoutes {
  static const String login = '/login';
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => LoginPage(),
    home: (context) => HomePage(),
  };
}