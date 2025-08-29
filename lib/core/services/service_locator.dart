import 'package:base_code/core/manager/file_manager/file_manager.dart';
import 'package:base_code/core/manager/language_manager/language_manager.dart';
import 'package:base_code/core/manager/theme_manager/theme_cubit.dart';
import 'package:base_code/core/network/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<FileManager>(() => FileManager());
  getIt.registerLazySingleton<ThemeCubit>(() => ThemeCubit());
  getIt.registerLazySingleton<LanguageManager>(() => LanguageManager());
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt()));
}
