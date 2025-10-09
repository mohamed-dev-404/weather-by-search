import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_by_search/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_by_search/models/weather_model.dart';
import 'package:weather_by_search/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());

  Future<void> getCurrentWeather({required String cityName}) async {
    emit(WeatherLoadingState());
    try {
      WeatherModel weatherModel = await WeatherService(
        dio: Dio(),
      ).getCurrentWeatherByCity(cityName);
      emit(WeatherLoadedSuccessfullyState(weatherModel: weatherModel));
    } catch (e) {
      emit(WeatherFailureState(errMessage: e.toString()));
    }
  }
}
