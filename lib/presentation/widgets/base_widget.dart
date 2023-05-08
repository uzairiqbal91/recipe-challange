import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_challange/core/constants/app_colors.dart';

class BaseWidget extends StatelessWidget {

  Widget child;
  BaseWidget({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
          child: Container(
            child: child

          ),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  String title;
  TitleWidget({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Center(child: Text(title,style:Theme.of(context).textTheme.headline5?.merge(TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: AppColors.TITLE_COLOR)))),
    );
  }
}




