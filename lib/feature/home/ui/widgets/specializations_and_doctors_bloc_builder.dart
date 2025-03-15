import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/feature/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advance/feature/home/logic/cubit/home_state.dart';
import 'package:flutter_advance/feature/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter_advance/feature/home/ui/widgets/doctors_speciality_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is SpecializationsLoading ||
              current is SpecializationsSuccess ||
              current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationsResponseModel) {
            var specializationsList =
                  specializationsResponseModel.specializationDataList;
            return setupSucsess(specializationsList);
          },
          specializationsError: (errorHandler) {
            return setupError();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }

  Widget setupSucsess(specializationsList) {
    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialityListView(specializationDataList:specializationsList?? [],),
          SizedBox(height: HeightManager.h8),
          DoctorsListView(doctorsList:specializationsList[0].doctorsList,),
        ],
      ),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
