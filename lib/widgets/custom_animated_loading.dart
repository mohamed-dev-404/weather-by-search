import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomAnimatedLoading extends StatelessWidget {
  const CustomAnimatedLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.staggeredDotsWave(
        color: Colors.blueAccent,
        size: 50,
      ),
    );
  }
}
