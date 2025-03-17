import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/feature/home/ui/widgets/doctors_blue_container.dart';
import 'package:flutter_advance/feature/home/ui/widgets/doctors_list/doctors_bloc_builder.dart';
import 'package:flutter_advance/feature/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:flutter_advance/feature/home/ui/widgets/home_top_bar.dart';
import 'package:flutter_advance/feature/home/ui/widgets/speciality_list/specializations_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            WidthManager.w20,
            HeightManager.h16,
            WidthManager.w20,
            HeightManager.h28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              SizedBox(height: HeightManager.h24),
              const DoctorsSpecialitySeeAll(),
              SizedBox(height: HeightManager.h18),
              const SpecializationsBlocBuilder(),
              SizedBox(height: HeightManager.h8),
              const DoctorsBlocBuilder(),


            ],
          ),
        ),
      ),
    );
  }
}