class WeatherModel {
  final String cityName;
  final double temperature;
  final double wind;
  final String desc;
  final int humidity;
  final double pressure;

  WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.wind,
    required this.desc,
    required this.humidity,
    required this.pressure,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> data) {
    return WeatherModel(
      cityName: data['location']['name'],
      temperature: data['current']['temp_c'],
      wind: data['current']['wind_kph'],
      desc: data['current']['condition']['text'],
      humidity: data['current']['humidity'],
      pressure: data['current']['pressure_mb'],
    );
  }
}
