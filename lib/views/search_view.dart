import 'package:flutter/material.dart';

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
            onSubmitted: (value) {},
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
