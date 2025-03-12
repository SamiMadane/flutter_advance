import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: getRegularTextStyle(
              fontSize: FontSizeManager.s13,
              color: ColorsManager.darkBlue,
            ),
          ),
          TextSpan(
            text: ' Sign Up',
            style: getSemiBoldTextStyle(fontSize: FontSizeManager.s13, color: ColorsManager.primaryColor),
          ),
        ],
      ),
    );
  }
}
