import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'commonView/common_app_bar.dart';
import 'l10n/app_localizations.dart';
import 'l10n/app_localizations_en.dart';

import 'constant/constant.dart';

AppLocalizations localizations = AppLocalizationsEn();

/// For Navigate when there is no context available
final navigatorKey = GlobalKey<NavigatorState>();

/// For SnackBar when there is no context available
final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

ValueNotifier<int> themeModeValueNotifier = ValueNotifier(1);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldMessengerKey,

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: localizations.appName,
      ),
      body: const Column(children: []),
    );
  }
}
