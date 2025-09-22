import 'package:flutter/material.dart';
import 'package:weather_by_search/views/search_view.dart';
import 'package:weather_by_search/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const WeatherInfoBody(),
    );
  }
}
