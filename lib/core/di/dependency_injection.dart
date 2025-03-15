import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/core/networking/dio_factory.dart';
import 'package:flutter_advance/feature/home/data/apis/home_api_service.dart';
import 'package:flutter_advance/feature/home/data/repository/home_repo.dart';
import 'package:flutter_advance/feature/login/data/repository/login_repo.dart';
import 'package:flutter_advance/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advance/feature/signup/data/repository/sign_up_repo.dart';
import 'package:flutter_advance/feature/signup/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

// GetIt => class dependency injection (files depend on each other).
final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  // registerLazySingleton is used to one instance of the object
  // registerFactory is used to create a new instance of the object
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // Signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // Home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  // another way to register (look in app_router.dart => HomeCubit(getIt()))
  // getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}