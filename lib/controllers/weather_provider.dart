import 'package:flutter/material.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/services/dio_service.dart';

class WeatherProvider extends ChangeNotifier {
  final DioService dioService = DioService();
  WeatherModel? weatherModel;
  bool isLoading = false;
  String? error;
  bool get hasData => weatherModel != null;

  Future<void> fetchWeatherData() async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      weatherModel = await dioService.getweatherData();
      error = null;
    } catch (e) {
      error = e.toString();
      weatherModel = null;
    }
    isLoading = false;
    notifyListeners();
  }
}
