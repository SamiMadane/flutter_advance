import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/assets_manager.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetsManager.docDocLogo),
        SizedBox(width: WidthManager.w10),
        Text(
          'DocDoc',
          style: getBoldTextStyle(fontSize: FontSizeManager.s24, color: ColorsManager.black)
        ),
      ],
    );
  }
}