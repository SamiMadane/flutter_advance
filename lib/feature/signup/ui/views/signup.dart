import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';
import 'package:flutter_advance/core/widgets/app_text_button.dart';
import 'package:flutter_advance/feature/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter_advance/feature/signup/logic/cubit/sign_up_cubit.dart';
import 'package:flutter_advance/feature/signup/ui/widgets/already_have_account_text.dart';
import 'package:flutter_advance/feature/signup/ui/widgets/sign_up_bloc_listener.dart';
import 'package:flutter_advance/feature/signup/ui/widgets/sign_up_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: WidthManager.w30, vertical: HeightManager.h30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: getBoldTextStyle(fontSize: FontSizeManager.s24, color: ColorsManager.primaryColor)
                ),
                SizedBox(height: HeightManager.h8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: getRegularTextStyle(fontSize: FontSizeManager.s14, color: ColorsManager.gray),
                ),
                SizedBox(height: HeightManager.h36),
                Column(
                  children: [
                    const SignupForm(),
                    SizedBox(height: HeightManager.h40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle:getSemiBoldTextStyle(fontSize: FontSizeManager.s16, color: ColorsManager.white),
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    SizedBox(height: HeightManager.h16),
                    const TermsAndConditionsText(),
                    SizedBox(height: HeightManager.h30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}