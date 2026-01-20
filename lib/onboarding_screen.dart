import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/controllers/weather_provider.dart';
import 'package:weather/home_screen.dart';
import 'package:weather/widgets/custom_scafold.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/onbImage.png', height: 250),
          Text(
            'Weather',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'ForeCasts',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xffdeb331),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Color(0xff362a85),
              backgroundColor: Color(0xffdeb331),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 4),
            ),
            onPressed: () {
              context.read<WeatherProvider>().fetchWeatherData();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
            child: Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
