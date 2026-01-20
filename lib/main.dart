import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/controllers/weather_provider.dart';
import 'package:weather/onboarding_screen.dart';

void main() {
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return WeatherProvider();
      },
      child: MaterialApp(
        home: OnboardingScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
