import 'package:dio/dio.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/core/networking/dio_factory.dart';
import 'package:flutter_advance/feature/login/data/repository/login_repo.dart';
import 'package:flutter_advance/feature/login/logic/cubit/login_cubit.dart';
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
}