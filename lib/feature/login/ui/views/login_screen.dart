import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';
import 'package:flutter_advance/core/widgets/app_text_button.dart';
import 'package:flutter_advance/core/widgets/app_text_form_field.dart';
import 'package:flutter_advance/feature/login/ui/widgets/dont_have_account_text.dart';
import 'package:flutter_advance/feature/login/ui/widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: WidthManager.w30 ,vertical: HeightManager.h30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: getBoldTextStyle(fontSize: FontSizeManager.s24, color: ColorsManager.primaryColor),
                ),
                SizedBox(height: HeightManager.h8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: getRegularTextStyle(fontSize: FontSizeManager.s14, color: ColorsManager.gray),
                ),
                SizedBox(height: HeightManager.h36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: 'Email'),
                      SizedBox(height: HeightManager.h18),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      SizedBox(height: HeightManager.h24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: getRegularTextStyle(fontSize: FontSizeManager.s13, color: ColorsManager.primaryColor),
                        ),
                      ),
                      SizedBox(height: HeightManager.h40),
                      AppTextButton(
                        buttonText: "Login",
                        textStyle: getSemiBoldTextStyle(fontSize: FontSizeManager.s16, color: ColorsManager.white),
                        onPressed: () {},
                      ),
                      SizedBox(height: HeightManager.h16),
                      const TermsAndConditionsText(),
                      SizedBox(height: HeightManager.h60),
                      const DontHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}