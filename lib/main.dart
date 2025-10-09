import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_by_search/cubits/get_weather_cubit/get_weather_cubit.dart';
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
      child: const MaterialApp(
        home: HomeView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
