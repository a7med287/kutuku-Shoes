import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/splash/presentation/splash_view.dart';

void main() {
  runApp(const KutukuApp());
}

class KutukuApp extends StatelessWidget {
  const KutukuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        home: const SplashView()
    );
  }
}
