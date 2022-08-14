import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sample/providers/authentication/user_info_page.dart';
import 'package:firebase_sample/routes/routes.dart';
import 'package:firebase_sample/ui/analytics/analytics_page.dart';
import 'package:firebase_sample/ui/authentication/authentication_page.dart';
import 'package:firebase_sample/ui/authentication/register_page.dart';
import 'package:firebase_sample/ui/index_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter._();

  /// The global key used to access navigator without context
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// The name of the route that loads on app startup
  static const String initialRoute = Routes.index;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case Routes.index:
        return MaterialPageRoute<dynamic>(
          builder: (context) => const IndexPage(),
          settings: const RouteSettings(name: Routes.index)
        );
      case Routes.analytics:
        return MaterialPageRoute<dynamic>(
          builder: (context) => const AnalyticsPage(),
          settings: const RouteSettings(name: Routes.analytics)
        );
      case Routes.authentication:
        return MaterialPageRoute<dynamic>(
            builder: (context) => const AuthenticationPage(),
            settings: const RouteSettings(name: Routes.authentication)
        );
      case Routes.userInfo:
        var user = settings.arguments as User;
        return MaterialPageRoute<dynamic>(
            builder: (context) => UserInfoPage(user: user),
            settings: const RouteSettings(name: Routes.userInfo)
        );
      case Routes.register:
        return MaterialPageRoute<dynamic>(
            builder: (context) => const RegisterPage(),
            settings: const RouteSettings(name: Routes.register)
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Unknown Route'),
        ),
        body: const Center(
          child: Text('Unknown Route'),
        ),
      ),
    );
  }

  static Future<dynamic> pushNamed(String routeName, {dynamic args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  static Future<dynamic> pushNamedAndRemoveUntil(String routeName, {dynamic args}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(routeName, (route) => false, arguments: args);
  }

  static Future<dynamic> pushReplacement(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  static Future<dynamic> popAndPushNamed(String routeName, {dynamic args}) {
    return navigatorKey.currentState!.popAndPushNamed(routeName, arguments: args);
  }

  static Future<void> pop([dynamic result]) async {
    navigatorKey.currentState!.pop(result);
  }

  static void popUntil(String routeName) {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }

  static void popUntilRoot() {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(initialRoute));
  }
}