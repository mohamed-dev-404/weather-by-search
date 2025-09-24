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

      return WeatherModel.fromJason(
        locationJson: jason['location'],
        currentJson: jason['current'],
        forecastJson: jason['forecast'],
      );
    } on DioException catch (e) {
      final errorMessage =
          e.response?.data['error']['message'] ??
          'Something went wrong, please try again later.';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Something went wrong, please try again later.');
    }
  } // getCurrentWeatherByCity
} // WeatherService
