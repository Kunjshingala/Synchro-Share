import 'dart:developer';

import 'package:flutter/foundation.dart';

const String tag = "DefaultLog";

enum RunMode {
  debug,
  release,
  profile,
}

abstract class Logger {
  static RunMode getRunMode() {
    if (kProfileMode) return RunMode.profile;
    if (kReleaseMode) return RunMode.release;
    return RunMode.debug;
  }
}

class MyLog implements Logger {
  void logError(String tag, String message) {
    log(message);
  }
}
