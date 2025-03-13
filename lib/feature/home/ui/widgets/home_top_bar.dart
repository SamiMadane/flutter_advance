
import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';
import 'package:flutter_svg/svg.dart';


class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Sami!',
              style: getBoldTextStyle(fontSize: FontSizeManager.s18, color: ColorsManager.darkBlue),
            ),
            Text(
              'How Are you Today?',
              style: getRegularTextStyle(fontSize: FontSizeManager.s12, color: ColorsManager.gray),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: RadiusManager.r24,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset(
            'assets/svgs/notifications.svg',
          ),
        )
      ],
    );
  }
}
