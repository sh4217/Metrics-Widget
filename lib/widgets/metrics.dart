import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:metrics_widget/assets/graph.svg';
import 'package:metrics_widget/styles/styles.dart';

const String assetName = 'assets/graph.svg';


// class Metrics extends StatefulWidget {
//
//   const Metrics({Key? key}) : super(key: key);
//
//   @override
//   _MetricsState createState() => _MetricsState();
// }
//
// class _MetricsState extends State<Metrics> {
//
//   var body = 'Upper Body';
//   var weight = '45';

class Metrics extends StatelessWidget {

  final String body;
  final String weight;

  Metrics(this.body, this.weight);

  @override
  Widget build(BuildContext context ) {
    return Container(
      height: bubbleDiameter.toDouble(),
      width: bubbleDiameter.toDouble(),
      decoration: bubbleBoxDecoration,
      padding: new EdgeInsets.fromLTRB(0, 35, 0, 0),
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
                Text(
                  body,
                  style: labelTextStyle,
                ),
                Text(
                  weight,
                  style: weightTextStyle,
                ),
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
  // void _doSomething() {
  //   setState(() {
  //     body  = 'Core';
  //   });
  }
// }

