import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/controllers/weather_provider.dart';
import 'package:weather/widgets/build_weather_data.dart';
import 'package:weather/widgets/custom_scafold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: SingleChildScrollView(
        child: Consumer<WeatherProvider>(
          builder: (context, weatherProvider, child) {
            if (weatherProvider.isLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (weatherProvider.error != null) {
              return Center(child: Text('$weatherProvider.error'));
            } else if (weatherProvider.hasData) {
              return BuildWeatherData(
                weatherModel: weatherProvider.weatherModel!,
              );
            } else {
              return Center(child: Text('No Data'));
            }
          },
        ),
      ),
    );
  }
}
