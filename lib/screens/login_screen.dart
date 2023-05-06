import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_challange/app/helpers.dart';
import 'package:recipe_challange/app_resources/app_colors.dart';
import 'package:recipe_challange/widgets/base_widget.dart';

import '../app/app_routes.dart';
import '../app_resources/app_constants.dart';
import '../widgets/form_field_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: Column(
        children: [
          Column(
            children: [
              TitleWidget(
                title: "Login",
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                AppStrings.EMAIL,
                                style: Theme.of(context).textTheme.headline6?.merge(
                                    TextStyle(color: AppColors.TITLE_COLOR)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: email_controller,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              validator: (input) => Helpers.validateEmail(input!),
                              onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                              decoration: InputDecoration(
                                hintText: "Enter "+AppStrings.EMAIL,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.grey), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(
                                      AppTextSizes.CIRCULAR_RADIUS_SIZE),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(width: 1, color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(
                                      AppTextSizes.CIRCULAR_RADIUS_SIZE),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(width: 1, color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(
                                      AppTextSizes.CIRCULAR_RADIUS_SIZE),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.5, color: AppColors.PRIMARY_COLOR),
                                  borderRadius: BorderRadius.circular(
                                      AppTextSizes.CIRCULAR_RADIUS_SIZE),
                                ),

                                prefixIcon: IconButton(
                                  icon: Icon(
                                    Icons.email,
                                    color: Colors.grey,
                                  ), onPressed: () {  },

                                ),

                              ),

                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Password",
                                style: Theme.of(context).textTheme.headline6?.merge(
                                    TextStyle(color: AppColors.TITLE_COLOR)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: password_controller,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: !passwordVisible,

                              validator: (input) => Helpers.validatePassword(input!),
                              decoration: InputDecoration(
                                hintText: "Enter "+AppStrings.PASSWORD,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1, color: Colors.grey), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(
                                      AppTextSizes.CIRCULAR_RADIUS_SIZE),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(width: 1, color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(
                                      AppTextSizes.CIRCULAR_RADIUS_SIZE),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(width: 1, color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(
                                      AppTextSizes.CIRCULAR_RADIUS_SIZE),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  //<-- SEE HERE
                                  borderSide: BorderSide(
                                      width: 1.5, color: AppColors.PRIMARY_COLOR),
                                  borderRadius: BorderRadius.circular(
                                      AppTextSizes.CIRCULAR_RADIUS_SIZE),
                                ),

                                suffixIcon: IconButton(
                                  icon: Icon(
                                    passwordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      passwordVisible = !passwordVisible;
                                    });
                                  },
                                ),
                                prefixIcon: IconButton(
                                  icon: Icon(
                                    Icons.lock,
                                    color: Colors.grey,
                                  ), onPressed: () {  },

                                ),
                              ),

                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamedAndRemoveUntil(
                              context, AppRoutes.SEARCH_SCREEN, (route) => false);


                        } else {

                        }
                      },
                      child: Text(
                        'Login',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.merge(TextStyle(color: AppColors.BUTTON_TEXT_COLOR)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        surfaceTintColor: AppColors.PRIMARY_COLOR,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              AppTextSizes.CIRCULAR_RADIUS_SIZE),
                        ),
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Forgot Password?',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.merge(TextStyle(color: AppColors.TITLE_COLOR,fontWeight: FontWeight.bold,fontSize: 18)),
                  ),



                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(

              children: [

                Text(
                  'or continue with',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.merge(TextStyle(color: Colors.grey.shade400,fontSize: 16)),
                ),
                const SizedBox(
                  height: 20,
                ),

                Container(
                  height: 60,

                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, AppRoutes.SEARCH_SCREEN, (route) => false);


                      } else {

                      }
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        SizedBox(width: 10,),
                        Text(
                          'Login with Goole',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.merge(TextStyle(color: AppColors.BUTTON_TEXT_COLOR)),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red.shade400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            AppTextSizes.CIRCULAR_RADIUS_SIZE),
                      ),
                    ),

                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,

                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, AppRoutes.SEARCH_SCREEN, (route) => false);


                      } else {

                      }
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Icon(Icons.facebook,color: Colors.white,size: 30,),
                        SizedBox(width: 10,),
                        Text(
                          'Login with Facebook',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.merge(TextStyle(color: AppColors.BUTTON_TEXT_COLOR)),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue.shade400,
                      surfaceTintColor: AppColors.PRIMARY_COLOR,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            AppTextSizes.CIRCULAR_RADIUS_SIZE),
                      ),
                    ),

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
