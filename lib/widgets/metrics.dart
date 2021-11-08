import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:metrics_widget/styles/styles.dart';

const String assetName = 'assets/graph.svg';

class Metrics extends StatelessWidget {

  // body and weight variables passed in from parent widget
  final String body;
  final String weight;

  Metrics(this.body, this.weight);

  @override
  Widget build(BuildContext context ) {
    return Container(
      // import widget styling choices from style document
      height: bubbleDiameter.toDouble(),
      width: bubbleDiameter.toDouble(),
      decoration: bubbleBoxDecoration,
      padding: new EdgeInsets.fromLTRB(0, 35, 0, 0),
      // stack the text elements on top of the background
      // pattern supplied by graph.svg
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset('assets/graph.svg'),
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                // pass in a string for the body label,
                // style it according to styles.dart
                Text(
                  body,
                  style: labelTextStyle,
                ),
                // pass in a string for the weight label,
                // style it according to styles.dart
                Text(
                  weight,
                  style: weightTextStyle,
                ),
                // lbs label doesn't change, styled by styles.dart
                Text(
                  'lbs',
                  style: unitTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// }

