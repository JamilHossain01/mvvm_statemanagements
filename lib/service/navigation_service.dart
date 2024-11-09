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

  Future<void> showDialog(Widget widget) async {
    await showAdaptiveDialog(
      context: navigatorKey.currentContext!,
      builder: (context) => widget,
    );
  }

  void showSnackbar() {
    final context = navigatorKey.currentContext!;
    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
    const snackWidgets = SnackBar(
      content: Text('Succes'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackWidgets);
  }
}
