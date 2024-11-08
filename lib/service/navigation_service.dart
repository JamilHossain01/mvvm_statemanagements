import 'package:flutter/material.dart';

class NavigationService {
  late GlobalKey<NavigatorState> navigatorKey;

  NavigationService() {
    navigatorKey = GlobalKey<NavigatorState>();
  }
  navigate(Widget widget) {
    return navigatorKey.currentState?.push(MaterialPageRoute(
      builder: (context) => widget,
    ));
  }
}