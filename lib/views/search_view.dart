import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_by_search/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search for a City',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) {
              GetWeatherCubit getWeatherCubit =
                  BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getCurrentWeather(cityName: value);
              Navigator.pop(context);
            },
            onChanged: (value) {},
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 24.0),
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
