import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_challange/app/app_routes.dart';
import 'package:recipe_challange/app_resources/app_colors.dart';
import 'package:recipe_challange/presentation/cubit/auth/auth_cubit.dart';
import 'package:recipe_challange/presentation/cubit/credential/credential_cubit.dart';
import 'package:recipe_challange/presentation/screens/splash_screen.dart';
import 'get_it_injection.dart' as getIt;


void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await getIt.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.sl<AuthCubit>()),
        BlocProvider(create: (_) => getIt.sl<CredentialCubit>()),

      ],
      child: MaterialApp(
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
      ),
    );
  }
  AppRoutes getAppRoutes() {
    return AppRoutes();
  }
}

