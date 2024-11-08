import 'package:flutter/material.dart';
import 'package:mvvm_statemanagements/screens/movies_screen.dart';

import 'constants/my_theme_data.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: MyThemeData.lightTheme,
      home:
          const MoviesScreen(), //const MovieDetailsScreen(), //const FavoritesScreen(), //const MoviesScreen(),
    );
  }
}
