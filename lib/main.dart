import 'package:flutter/material.dart';
import 'package:weather_by_search/views/home_view.dart';

void main() {
  runApp(const WeatherBySearch());
}

class WeatherBySearch extends StatelessWidget {
  const WeatherBySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
