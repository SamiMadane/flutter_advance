import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';
import 'package:flutter_advance/feature/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:flutter_advance/feature/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:flutter_advance/feature/onboarding/ui/widgets/get_started_button.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: HeightManager.h30, bottom: HeightManager.h30),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: HeightManager.h30),
              const DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: WidthManager.w30),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: getRegularTextStyle(fontSize: FontSizeManager.s13, color: ColorsManager.gray),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: HeightManager.h30),
                    const GetStartedButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}