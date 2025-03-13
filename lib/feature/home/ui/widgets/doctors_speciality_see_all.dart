import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speciality',
          style: getSemiBoldTextStyle(fontSize: FontSizeManager.s18, color: ColorsManager.darkBlue),
        ),
        const Spacer(),
        Text(
          'See All',
          style: getRegularTextStyle(fontSize: FontSizeManager.s12, color: ColorsManager.primaryColor),
        ),
      ],
    );
  }
}