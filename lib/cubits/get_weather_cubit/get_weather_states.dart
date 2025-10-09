import 'package:weather_by_search/models/weather_model.dart';

class WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadedSuccessfullyState extends WeatherState {
  final WeatherModel weatherModel;
  WeatherLoadedSuccessfullyState({required this.weatherModel});
}

class WeatherFailureState extends WeatherState {
  final String errMessage;
  WeatherFailureState({required this.errMessage});
}
