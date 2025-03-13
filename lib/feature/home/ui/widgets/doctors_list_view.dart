import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    width: WidthManager.w100,
                    height: HeightManager.h100,
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2qDuoEnmp2U_VRFIcUpA7D67aDBHWipZ3yg&s',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: WidthManager.w16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: getBoldTextStyle(fontSize: FontSizeManager.s18, color: ColorsManager.darkBlue),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: HeightManager.h5),
                      Text(
                        'Degree | 0111111111111',
                        style: getMediumTextStyle(fontSize: FontSizeManager.s12, color: ColorsManager.gray),
                      ),
                      SizedBox(height: HeightManager.h5),

                      Text(
                        'Email@email.com',
                        style:getMediumTextStyle(fontSize: FontSizeManager.s12, color: ColorsManager.gray),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
