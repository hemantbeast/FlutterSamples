import 'package:deep_link/routes/routes.dart';
import 'package:deep_link/ui/page_a.dart';
import 'package:deep_link/ui/page_b.dart';
import 'package:deep_link/ui/page_c.dart';
import 'package:deep_link/ui/page_d.dart';
import 'package:flutter/material.dart';

class AppRouter {
  const AppRouter._();

  /// The global key used to access navigator without context
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// The name of the route that loads on app startup
  static const String initialRoute = Routes.pageA;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.pageA:
        return _setPage(page: const PageA(), settings: settings);
      case Routes.pageB:
        return _setPage(page: const PageB(), settings: settings);
      case Routes.pageC:
        return _setPage(page: const PageC(), settings: settings);
      case Routes.pageD:
        return _setPage(page: const PageD(), settings: settings);
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

  static MaterialPageRoute<dynamic> _setPage({required Widget page, required RouteSettings settings}) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => page,
      settings: settings,
    );
  }

  static Future<dynamic> pushNamed(String routeName, {dynamic args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  static Future<dynamic> pushNamedAndRemoveUntil(String routeName, String untilRoute, {dynamic args}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      ModalRoute.withName(untilRoute),
      arguments: args,
    );
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
