import 'package:base_code/core/manager/language_manager/language_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/file_manager/file_manager.dart';
import '../manager/theme_manager/theme_cubit.dart';
import '../services/service_locator.dart';

class Providers {
  Providers._(); 
  static final List<BlocProvider> providers = [
    BlocProvider<ThemeCubit>(create: (context) => getIt<ThemeCubit>()),
    BlocProvider<FileManager>(create: (context) => getIt<FileManager>()),
    BlocProvider<LanguageManager>(create: (context) => getIt<LanguageManager>()),
    // BlocProvider<SettingsCubit>(create: (context) => getIt<SettingsCubit>()..getUserData()),
  ];
}