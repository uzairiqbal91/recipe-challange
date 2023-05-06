import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../app/helpers.dart';
import '../app_resources/app_colors.dart';
import '../app_resources/app_constants.dart';

class EmailFormField extends StatelessWidget {

  TextEditingController emailController;


  String title;
  String emailValidation =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  EmailFormField(
      {
        required this.emailController ,
        this.title = "",
        });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        // Padding(
        //   padding: EdgeInsets.only(left: 5,bottom: AppTextSizes.TEXT_FIELD_LABEL_PADDING),
        //   child: Container(
        //     height: 20,
        //    child: Align(
        //      alignment: Alignment.centerLeft,
        //      child: Text(
        //        AppStrings.EMAIL,
        //        style: TextStyle(
        //          color: Colors.black
        //        ),
        //
        //      ),
        //    ),
        //
        //   ),
        // ),

        Container(
          height: 50.0,
          // color: AppColors.EDIT_TEXT_BACKGROUND_COLOR,
          child:
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppTextSizes.SCREEN_PADDING_FIELDS_UNDER_LABEL),
            child: TextField(


              controller: this.emailController,
              cursorColor: AppColors.TEXT_COLOR,
              autocorrect: false,
              enableSuggestions: false,

//      autofocus: true,
//    autofocus: this.isAutofocus? true : false,


              style: TextStyle(
                // fontSize: Provider.of<SignUpChange>(context).getIsSignUp()
                //     ? globals.Globals.FORM_FONT_SIZE
                //     : globals.Globals.FORM_FONT_SIZE,

//        decorationColor: Color(0XFFFFCC00),//Font color change
                  color: Colors.black


              ),


              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: this.title,
                border: InputBorder.none,
                hintText: AppStrings.EMAIL,
                hintStyle: TextStyle(
                    color: Colors.grey
                ),

                // floatingLabelBehavior: FloatingLabelBehavior.always,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(10.0),)
                // focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.PRIMARY_COLOR,width: 1.0)),
                // errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.0)),
                // disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.PRIMARY_COLOR,width: 1.0)),







              ),
//      validator: (input) => input != emailValidation
//          ? 'Email is invalid'
//          : null,
//      onSaved: (input) => _password = input,


              // validator: emailValidation,


              // inputFormatters: [
              //   LengthLimitingTextInputFormatter(AppTextSizes.CHARACTERlIMIT)
              // ],
            ),
          ),
        ),
      ],
    );
  }
}