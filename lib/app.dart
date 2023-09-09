import 'package:cofe_app/presentation/pages/home_page.dart';
import 'package:cofe_app/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}
