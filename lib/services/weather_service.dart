import 'package:dio/dio.dart';
import 'package:weather_by_search/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String _apiKey = 'ed21fe8a2a6a478eb9e184559252209';
  final String _baseUrl = 'http://api.weatherapi.com/v1';
  WeatherService({required this.dio});

  Future<WeatherModel> getCurrentWeatherByCity(String cityName) async {
    try {
      Response response = await dio.get(
        '$_baseUrl/forecast.json?key=$_apiKey&q=$cityName&days=1',
      );
      Map<String, dynamic> jason = response.data;
      Map<String, dynamic> locationJason = jason['location'];
      Map<String, dynamic> currentJason = jason['current'];
      Map<String, dynamic> forecastJason = jason['forecast'];

      return WeatherModel.fromJason(
        locationJson: locationJason,
        currentJson: currentJason,
        forecastJson: forecastJason,
      );
    } catch (e) {
      return WeatherModel(
        cityName: 'Error',
        lastUpdatedTime: 'Error',
        weatherState: 'Error',
        currentTemperature: 0.0,
        minTemperature: 0.0,
        maxTemperature: 0.0,
      );
    }
  } // getCurrentWeatherByCity
} // WeatherService
