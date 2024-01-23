import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:karlo_kalamiza_shop/features/authentication/screens/onboarding/onboadring_screen.dart';
import 'package:karlo_kalamiza_shop/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}