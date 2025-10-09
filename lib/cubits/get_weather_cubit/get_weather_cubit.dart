import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_by_search/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_by_search/models/weather_model.dart';
import 'package:weather_by_search/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialWeatherState());

  Future<void> getCurrentweather({required String cityName}) async {
    try {
      WeatherModel weatherModel = await WeatherService(
        dio: Dio(),
      ).getCurrentWeatherByCity(cityName);
      emit(WeatherLoadedSuccessfullyState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
