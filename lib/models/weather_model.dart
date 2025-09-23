class WeatherModel {
  final String cityName;
  final String lastUpdatedTime;
  final String weatherState;
  final double currentTemperature;
  final double minTemperature;
  final double maxTemperature;

  WeatherModel({
    required this.cityName,
    required this.lastUpdatedTime, // in the format of "2025-09-23 18:45"
    required this.weatherState,  // e.g., "Sunny", "Cloudy"
    required this.currentTemperature, // in Celsius
    required this.minTemperature, //  in Celsius
    required this.maxTemperature, //  in Celsius
  });

  factory WeatherModel.fromJason(
    Map<String, dynamic> locationJson,
    Map<String, dynamic> currentJson,
    Map<String, dynamic> forecastJson,
  ) {
    return WeatherModel(
      cityName: locationJson['name'],
      lastUpdatedTime: currentJson['last_updated'],
      weatherState: forecastJson['forecastday'][0]['day']['condition']['text'],
      currentTemperature: currentJson['temp_c'],
      minTemperature: forecastJson['forecastday'][0]['day']['mintemp_c'],
      maxTemperature: forecastJson['forecastday'][0]['day']['maxtemp_c'],
    );
  }
}
