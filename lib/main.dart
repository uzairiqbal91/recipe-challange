import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:recipe_challange/app/app_routes.dart';
import 'package:recipe_challange/app_resources/app_colors.dart';
import 'package:recipe_challange/screens/splash_screen.dart';


void main() {

  runApp(DevicePreview(

    builder: (context) => const MyApp(), // Wrap your app
  ),);
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: getAppRoutes().getRoutes,

      home: const SplashScreen(),
      builder: (context, child) {
        // textScaleFactor to prevent font size change in application
        return MediaQuery(
          child: child!,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
    );
  }
  AppRoutes getAppRoutes() {
    return AppRoutes();
  }
}

