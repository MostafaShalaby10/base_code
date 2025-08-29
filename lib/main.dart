import 'package:base_code/core/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/manager/language_manager/language_manager.dart';
import 'core/manager/theme_manager/theme_cubit.dart';
import 'core/services/service_locator.dart';
import 'core/services/shared_prefrences.dart';
import 'core/utils/providers.dart';
import 'features/splash/presention/page/splash_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart'; // Add this import if not present

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefs.init();
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: Providers.providers,
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
              return BlocBuilder<LanguageManager, LanguageManagerState>(
                builder: (context, langState) {
                  final lang = SharedPrefs.getData(key: "language") ?? "en";
                  final themeMode = SharedPrefs.getData(key: "theme") == "dark"
                      ? ThemeMode.dark
                      : ThemeMode.light;
                  return MaterialApp(
                    localizationsDelegates: [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],

                    supportedLocales: const [Locale('en'), Locale('ar')],
                    debugShowCheckedModeBanner: false,
                    locale: Locale(lang),
                    themeMode: themeMode,
                    theme: AppTheme.lightTheme,
                    darkTheme: AppTheme.darkTheme ,
                    home: const SplashPage(),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
