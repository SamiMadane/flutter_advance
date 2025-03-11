import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/assets_manager.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AssetsManager.docDocLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withValues(alpha: 0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(AssetsManager.onBoardingDoctor),
        ),
        Positioned(
          bottom: HeightManager.h20,
          left: WidthManager.w0,
          right: WidthManager.w0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: getBoldTextStyle(fontSize: FontSizeManager.s32, color: ColorsManager.primaryColor, height: HeightManager.h1_3)
          ),
        ),
      ],
    );
  }
}