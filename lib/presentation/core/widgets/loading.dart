import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends StatelessWidget {
  final double size;
  const Loading({
    super.key,
    this.size = 90,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: const LoadingIndicator(
        indicatorType: Indicator.ballGridPulse,
        strokeWidth: 30,
        backgroundColor: Colors.amber,
        colors: [
          Colors.green,
          Colors.red,
          Colors.blue,
          Colors.teal,
          Colors.cyan,
        ],
      ),
    );
  }
}
