import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_by_search/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_by_search/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_by_search/views/search_view.dart';
import 'package:weather_by_search/widgets/custom_animated_loading.dart';
import 'package:weather_by_search/widgets/custom_error_widget.dart';
import 'package:weather_by_search/widgets/no_weather_body.dart';
import 'package:weather_by_search/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 65,
        titleSpacing: 35,
        title: const Text(
          'Weather by search App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (contex) {
                    return const SearchView();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 35,
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return const NoWeatherBody();
          } else if (state is WeatherLoadedSuccessfullyState) {
            return WeatherInfoBody(weatherModel: state.weatherModel);
          } else if (state is WeatherFailureState) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const CustomAnimatedLoading();
          }
        },
      ),
    );
  }
}
