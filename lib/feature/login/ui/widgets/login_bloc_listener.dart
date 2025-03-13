import 'package:flutter/material.dart';
import 'package:flutter_advance/core/helpers/extensions.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';
import 'package:flutter_advance/core/routes/routes.dart';
import 'package:flutter_advance/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advance/feature/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryColor,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      // SizeBox.shrink() dont take any space in the widget tree.
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style:  getMediumTextStyle(fontSize: FontSizeManager.s15, color: ColorsManager.darkBlue),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: getSemiBoldTextStyle(fontSize: FontSizeManager.s14, color: ColorsManager.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}