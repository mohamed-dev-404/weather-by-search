import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomAnimatedLoading extends StatelessWidget {


  
  final MaterialColor color ;
  const CustomAnimatedLoading({
    super.key, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.staggeredDotsWave(
        color: color,
        size: 50,
      ),
    );
  }
}
