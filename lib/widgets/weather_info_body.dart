import 'package:flutter/material.dart';
import 'package:weather_by_search/helper/weather_image_mapper.dart';
import 'package:weather_by_search/helper/weather_theme_mapper.dart';
import 'package:weather_by_search/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  final WeatherModel weatherModel;
  const WeatherInfoBody({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomCenter,
          colors: [
            getWeatherTheme(weather: weatherModel),
            getWeatherTheme(weather: weatherModel)[300]!,
            getWeatherTheme(weather: weatherModel)[200]!,
            getWeatherTheme(weather: weatherModel)[100]!,
            getWeatherTheme(weather: weatherModel)[50]!,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Updated at ${weatherModel.lastUpdatedTime.hour}:${weatherModel.lastUpdatedTime.minute}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  getWeatherImageByCode(weatherModel.weatherCode),
                  width: 100,
                  height: 100,
                ),
                Text(
                  '${weatherModel.currentTemperature.round()} °C',
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'max: ${weatherModel.maxTemperature.round()} °C',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'min: ${weatherModel.minTemperature.round()}  °C',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            Text(
              weatherModel.weatherState,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
