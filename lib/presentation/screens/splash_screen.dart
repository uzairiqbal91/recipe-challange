import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../app/app_routes.dart';
import '../../app_resources/app_colors.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 4), () {

      Navigator.pushNamedAndRemoveUntil(
          context, AppRoutes.SIGN_IN_SCREEN, (route) => false);
      // Navigator.pushNamedAndRemoveUntil(context, AppRoutes.APP_SIGN_IN, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.PRIMARY_COLOR,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.fastfood_outlined,color: Colors.white,size: 100,),
              SizedBox(height: 10,),
              Text("Recipe App",style: Theme.of(context).textTheme.headline4?.merge(TextStyle(color: AppColors.TEXT_COLOR)),),
            ],
          )
        )
      ),
    );
  }


}
