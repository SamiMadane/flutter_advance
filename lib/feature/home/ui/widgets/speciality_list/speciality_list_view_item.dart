import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/assets_manager.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';
import 'package:flutter_advance/feature/home/data/models/specializations_response_model.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData specializationData;
  final int itemIndex;
  final int selectedIndex;
  const SpecialityListViewItem({
    super.key,
    required this.specializationData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : WidthManager.w24,
      ),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.darkBlue),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: RadiusManager.r28,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset(
                    AssetsManager.generalSpeciality,
                    height: HeightManager.h42,
                    width: WidthManager.w42,
                  ),
                ),
              )
              : CircleAvatar(
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
            style:
                itemIndex == selectedIndex
                    ? getBoldTextStyle(
                      fontSize: FontSizeManager.s14,
                      color: ColorsManager.darkBlue,
                    )
                    : getRegularTextStyle(
                      fontSize: FontSizeManager.s12,
                      color: ColorsManager.darkBlue,
                    ),
          ),
        ],
      ),
    );
  }
}
