import 'package:flutter/material.dart';
import 'constant/enums.dart';
import 'l10n/app_localizations.dart';
import 'l10n/app_localizations_en.dart';

import 'main_app.dart';

AppLocalizations localizations = AppLocalizationsEn();

/// For Navigate when there is no context available
final navigatorKey = GlobalKey<NavigatorState>();

/// For SnackBar when there is no context available
final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

ValueNotifier<AppThemeMode> themeModeValueNotifier = ValueNotifier(AppThemeMode.system);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}
