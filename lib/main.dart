import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_challange/core/constants/app_colors.dart';
import 'package:recipe_challange/core/constants/app_constants.dart';
import 'package:recipe_challange/presentation/screens/login/login_cubit/login_cubit.dart';
import 'package:recipe_challange/presentation/screens/search/recipes_cubit/recipe_cubit.dart';
import 'package:recipe_challange/presentation/screens/splash_screen.dart';
import 'core/di/get_it_injection.dart' as getIt;
import 'core/navigation/app_routes.dart';


void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await getIt.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.sl<LoginCubit>()),
        BlocProvider(create: (_) => getIt.sl<RecipeCubit>()),

      ],
      child: MaterialApp(
        title: AppStrings.APP_NAME,
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

