import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class _progressindicator extends StatelessWidget {
  const _progressindicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: CircularPercentIndicator(
          radius: 60,
          lineWidth: 15.0,
          animation: true,
          percent: 60 / 100,
          backgroundColor: Colors.black12,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: Colors.redAccent,
        ));
  }
}
