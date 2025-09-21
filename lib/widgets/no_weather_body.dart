import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'there is no weather yet 😔 ',
            style: TextStyle(
              fontSize: 25,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'start searching now 🔍',
                textStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
                speed: Duration(milliseconds: 100), // typing speed
              ),
            ],
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
            repeatForever: true, // show once
          ),
        ],
      ),
    );
  }
}
