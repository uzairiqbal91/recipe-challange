import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_challange/core/constants/app_colors.dart';
import 'package:recipe_challange/presentation/screens/login/widgets/login_bottom_container.dart';
import 'package:recipe_challange/presentation/screens/search/search_screen.dart';
import 'package:recipe_challange/presentation/screens/login/widgets/password_text_form_widget.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/helpers.dart';
import '../../../core/navigation/app_routes.dart';
import '../../widgets/base_widget.dart';
import 'login_cubit/login_cubit.dart';
import 'login_cubit/login_state.dart';
import 'widgets/email_text_form_widget.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();


  @override
  void dispose() {

    if(mounted){
      _emailController.dispose();
      _passwordController.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, credentialState) {
          if (credentialState is LoginSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, AppRoutes.SEARCH_SCREEN, (route) => false);
          }
        },
        builder: (context, credentialState) {
          return _signInBodyWidget();
        },
      ),
    );
  }

  _signInBodyWidget() {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Column(
                children: [
                  TitleWidget(
                    title: AppStrings.LOGIN,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            EmailTextFormWidget(emailController: _emailController, context: context,),
                            const SizedBox(
                              height: 20,
                            ),
                            PasswordTextFormWidget(passwordController: _passwordController)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocBuilder<LoginCubit, LoginState>(
                        builder: (context, credentialState) {
                          if (credentialState is LoginLoading) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppStrings.PLEASE_WAIT,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircularProgressIndicator()
                              ],
                            );
                          } else if (credentialState is LoginFailure) {
                            Helpers.showToast(AppStrings.INVALID_EMAIL_PASSWORD);
                          }

                          return Container(
                            height: 60,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _signInUser();
                                } else {}
                              },
                              child: Text(
                                AppStrings.LOGIN,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.merge(TextStyle(
                                        color: AppColors.BUTTON_TEXT_COLOR)),
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
                          );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        AppStrings.FORGOT_PASSWORD,
                        style: Theme.of(context).textTheme.headline6?.merge(
                            TextStyle(
                                color: AppColors.TITLE_COLOR,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Spacer(),
              LoginBottomContainer(),
            ],
          ),
        ),
      ],
    );
  }

  void _signInUser() {
    BlocProvider.of<LoginCubit>(context).signInUser(
      email: _emailController.text,
      password: _passwordController.text,
    );
  }
}



