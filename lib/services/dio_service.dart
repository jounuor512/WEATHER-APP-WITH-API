import 'package:dio/dio.dart';
import 'package:weather/models/weather_model.dart';

class DioService {
  static const url =
      'http://api.weatherapi.com/v1/current.json?key=f8b28f63dc314b329cf55052250511&q=cairo&aqi=no';

  final Dio dio = Dio();

  Future<WeatherModel> getweatherData() async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        return WeatherModel.fromJson(response.data);
      } else {
        throw Exception('Error');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
