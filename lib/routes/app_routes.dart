import 'package:flutter/material.dart';
import 'package:gratitude_jar/screens/home_screen.dart';
import 'package:gratitude_jar/screens/login_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String home = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {
    login: (_) => const LoginScreen(),
    home: (_) => const HomeScreen(),
  };
}
