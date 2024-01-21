import 'package:flutter/material.dart';

import 'routes.dart';

class RouteGenerator {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        // return MaterialPageRoute(builder: (context) => const SplashScreen(key: ValueKey(Routes.splashScreen)), settings: settings);

      default:
        return null;
    }
  }

  static Route unKnownRoute(_) {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(child: Text("Page Not Found")),
      ),
    );
  }
}
