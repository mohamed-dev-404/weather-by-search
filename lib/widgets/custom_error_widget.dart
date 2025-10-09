import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errMessage;
  const CustomErrorWidget({
    required this.errMessage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset(
                'assets/images/error.gif',
              ),
            ),
            Text(
              errMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 26,
                color: Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
