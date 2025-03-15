import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/assets_manager.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';
import 'package:flutter_advance/feature/home/data/models/specializations_response_model.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData specializationData;
  final int itemIndex;
  const DoctorsSpecialityListViewItem({super.key, required this.specializationData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : WidthManager.w24),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset(
                    AssetsManager.generalSpeciality,
                    height: HeightManager.h40,
                    width: WidthManager.w40,
                  ),
                ),
                SizedBox(height: HeightManager.h8),
                Text(
                  specializationData.name ?? 'Name',
                  style: getRegularTextStyle(fontSize: FontSizeManager.s12, color: ColorsManager.darkBlue),
                ),
              ],
            ),
          );
  }
}