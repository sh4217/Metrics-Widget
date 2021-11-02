import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:metrics_widget/assets/graph.svg';
import 'package:metrics_widget/assets/styles.dart';

class Metrics extends StatefulWidget {
  const Metrics({Key? key}) : super(key: key);

  @override
  _MetricsState createState() => _MetricsState();
}

class _MetricsState extends State<Metrics> {

  final String assetName = 'assets/graph.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bubbleDiameter.toDouble(),
      decoration: bubbleBoxDecoration,
      padding: new EdgeInsets.all(25.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            Text(
              'Upper Body',
              style: labelTextStyle,
            ),
            Text(
              '45',
              style: weightTextStyle,
            ),
            Text(
              'lbs',
              style: unitTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

