import 'package:flutter/widgets.dart';
import 'package:flutter_advance/core/resourses/colors_manager.dart';
import 'package:flutter_advance/core/resourses/fonts_manager.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/core/resourses/styles_manager.dart';
import 'package:flutter_advance/feature/home/data/models/specializations_response_model.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorModel;
  const DoctorsListViewItem({super.key, this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: HeightManager.h16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              width: WidthManager.w100,
              height: HeightManager.h100,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWjwYSYjlzyrnNwk7mYkNNj2rm04BVlGlQuw&s',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: WidthManager.w16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorModel?.name ?? 'Name',
                  style: getBoldTextStyle(
                    fontSize: FontSizeManager.s18,
                    color: ColorsManager.darkBlue,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: HeightManager.h5),
                Text(
                  '${doctorModel?.degree ?? 'Degree'} | ${doctorModel?.phone ?? 'Phone'}',
                  style: getMediumTextStyle(
                    fontSize: FontSizeManager.s12,
                    color: ColorsManager.gray,
                  ),
                ),
                SizedBox(height: HeightManager.h5),

                Text(
                  doctorModel?.email ?? 'Email',
                  style: getMediumTextStyle(
                    fontSize: FontSizeManager.s12,
                    color: ColorsManager.gray,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
