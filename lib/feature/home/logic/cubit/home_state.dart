import 'package:flutter_advance/core/networking/api_error_handler.dart';
import 'package:flutter_advance/core/networking/api_error_model.dart';
import 'package:flutter_advance/feature/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Specializations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(List<SpecializationsData?>? specializationDataList) = SpecializationsSuccess;
  const factory HomeState.specializationsError(ApiErrorModel apiErrorModel) =
      SpecializationsError;

  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsError() =
      DoctorsError;
}
