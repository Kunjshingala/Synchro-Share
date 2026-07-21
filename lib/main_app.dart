import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constant/constant.dart';
import 'constant/enums.dart';
import 'l10n/app_localizations.dart';
import 'main.dart';
import 'screens/home/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<AppThemeMode>(
      valueListenable: themeModeValueNotifier,
      child: const MyHomePage(),
      builder: (context, value, child) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          scaffoldMessengerKey: scaffoldMessengerKey,

          debugShowCheckedModeBanner: false,

          /// Localization
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeResolutionCallback: (locale, supportedLocales) {
            // Use device locale if supported, otherwise fallback
            return supportedLocales.firstWhere(
              (element) => element.languageCode == locale?.languageCode,
              orElse: () => defaultLocale,
            );
          },

          /// Theme
          theme: ThemeData(useMaterial3: true),
          builder: (context, child) {
            localizations = AppLocalizations.of(context);
            return ScreenUtilInit(
              designSize: const Size(360, 690),
              minTextAdapt: true,
              splitScreenMode: true,
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  alwaysUse24HourFormat: false,
                  textScaler: const TextScaler.linear(1.0),
                ),
                child: child ?? const SizedBox.shrink(),
              ),
            );
          },

          home: child,
        );
      },
    );
  }
}

