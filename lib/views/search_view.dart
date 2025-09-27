// ignore_for_file: use_build_context_synchronously
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_by_search/models/weather_model.dart';
import 'package:weather_by_search/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        toolbarHeight: 65,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Search for a City',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              WeatherModel weatherModel = await WeatherService(
                dio: Dio(),
              ).getCurrentWeatherByCity(value);
              log(weatherModel.cityName); // for debug

              Navigator.pop(
                context,
                weatherModel,
              ); // send data back to home view
            },
            onChanged: (value) {},
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 24.0,
              ),
              hint: Text('Enter city name'),
              label: Text('Search'),
              prefixIcon: Icon(Icons.search_rounded),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
