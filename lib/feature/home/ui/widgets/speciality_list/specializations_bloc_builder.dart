import 'package:flutter/material.dart';
import 'package:flutter_advance/core/resourses/sizes_util_manager.dart';
import 'package:flutter_advance/feature/home/logic/cubit/home_cubit.dart';
import 'package:flutter_advance/feature/home/logic/cubit/home_state.dart';
import 'package:flutter_advance/feature/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:flutter_advance/feature/home/ui/widgets/speciality_list/speciality_list_view.dart';
import 'package:flutter_advance/feature/home/ui/widgets/speciality_list/speciality_shimmer_loading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

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
          specializationsSuccess: (specializationDataList) {
            return setupSucsess(specializationDataList);
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
        children: [
          SpecialityShimmerLoading(),
          SizedBox(height: HeightManager.h8),
          DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupSucsess(specializationsList) {
    return SpecialityListView(specializationDataList:specializationsList?? [],);
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
