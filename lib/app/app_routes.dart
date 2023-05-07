import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../presentation/screens/login_screen.dart';
import '../presentation/screens/search_screen.dart';
import '../presentation/screens/splash_screen.dart';




class AppRoutes {

  static const String SIGN_IN_SCREEN = "/sign_in_view";
  static const String SEARCH_SCREEN = "/app_menu";


  Route getRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {

      case SIGN_IN_SCREEN:
        {
          return MaterialPageRoute<void>(
            settings: routeSettings,

            // builder: (BuildContext context) => VolunteerDashboard(),
            // builder: (BuildContext context) => SignInView(routeSettings.arguments ?? Object()),
            builder: (BuildContext context) => LoginScreen(),
          );
        }

      case SEARCH_SCREEN:
        {
          return MaterialPageRoute<void>(
            settings: routeSettings,

            // builder: (BuildContext context) => VolunteerDashboard(),
            // builder: (BuildContext context) => SignInView(routeSettings.arguments ?? Object()),
            builder: (BuildContext context) => SearchScreen(),
          );
        }


      default:
        {

          return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) => SplashScreen(),
              // builder: (BuildContext context) => SettingsView(),
              fullscreenDialog: false);
        }
    }
  }

}






