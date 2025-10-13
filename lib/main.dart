import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_by_search/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_by_search/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_by_search/helper/weather_theme_mapper.dart';
import 'package:weather_by_search/views/home_view.dart';

void main() {
  runApp(const WeatherBySearch());
}

class WeatherBySearch extends StatelessWidget {
  const WeatherBySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetWeatherCubit>(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<GetWeatherCubit, WeatherState>(
            builder: (context, state) {
              return MaterialApp(
                theme: ThemeData(
                  useMaterial3: false,
                  scaffoldBackgroundColor: Colors.white,
                  primarySwatch: getWeatherTheme(
                    weather: BlocProvider.of<GetWeatherCubit>(
                      context,
                    ).weatherModel,
                  ),
                ),
                home: const HomeView(),
                debugShowCheckedModeBanner: false,
              );
            },
          );
        },
      ),
    );
  }
}
