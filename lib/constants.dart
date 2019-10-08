library constants;

import 'package:flutter/painting.dart';

enum AppState { auth, main }

class ObserverNotifications {
  static const appStateChanged = "AppState.Changed";
}

class BMColors {
  static final actionable_blue = Color(0xFF47E4BB);
  static final alert_orange = Color(0xFFEC9B3B);
  static final warning_red = Color(0xFFE8647C);
  static final dark_grey = Color(0xFF030303);
  static final grey = Color(0xFF4A4A4A);
  static final light_grey = Color(0xFFA4A4A4);
}
