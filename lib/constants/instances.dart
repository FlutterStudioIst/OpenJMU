import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:openjmu/pages/home/apps_page.dart';
import 'package:openjmu/pages/home/course_schedule_page.dart';

NavigatorState get navigatorState => Instances.navigatorKey.currentState;

BuildContext get currentContext => navigatorState.context;

ThemeData get currentTheme => Theme.of(currentContext);

Brightness get currentBrightness => currentTheme.brightness;

Color get currentThemeColor => currentTheme.accentColor;

bool get currentIsDark => currentBrightness == Brightness.dark;

int moreThanZero(num value) => math.max(0, value);

int moreThanOne(num value) => math.max(1, value);

DateTime get currentTime => DateTime.now();

int get currentTimeStamp => currentTime.millisecondsSinceEpoch;

class Instances {
  const Instances._();

  static final EventBus eventBus = EventBus();
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static AppLifecycleState appLifeCycleState = AppLifecycleState.resumed;
  static ConnectivityResult connectivityResult;

  static final GlobalKey<ScaffoldState> mainPageScaffoldKey =
      GlobalKey<ScaffoldState>();
  static final GlobalKey<AppsPageState> appsPageStateKey =
      GlobalKey<AppsPageState>();
  static final GlobalKey<CourseSchedulePageState> courseSchedulePageStateKey =
      GlobalKey<CourseSchedulePageState>();
  static final CookieManager webViewCookieManager = CookieManager();
}
