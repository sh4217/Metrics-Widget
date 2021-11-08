import 'package:flutter/material.dart';
import 'package:metrics_widget/widgets/metrics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Metrics Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // initial values for the body and weight labels
  String body = 'Upper body';
  String weight = '45';

  // text editing controllers that will be used to reload
  // body and weight labels with user input values
  final bodyController = TextEditingController();
  final weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Metrics(body, weight),
            /*
            use invisible sized boxes to put spacing in between
            elements while still preserving vertical column centering
            */
            const SizedBox(
              height: 50,
            ),

            Padding(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    hintText: 'Enter body part',
                ),
                /*
                bodyController makes the text entered in this field
                available to be called
                */
                controller: bodyController,
              ),
            ),

            TextButton(
              child: Text(
                'Update body part'
              ),
              /*
              when the update button is pressed, it reloads the
              metrics widget with a new value for body
              */

              onPressed: () {
                setState(() {
                  body = bodyController.text;
                });
              },
            ),

            const SizedBox(
              height: 50,
            ),

            Padding(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter weight',
                ),
                /*
                weightController makes the text entered in this
                field able to be called
                */
                controller: weightController,
              ),
            ),

            TextButton(
              child: Text(
                  'Update weight'
              ),
              /*
              when this button is pressed, the metrics widget
              will be reloaded with a new value for weight
              */
              onPressed: () {
                setState(() {
                  weight = weightController.text;
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}
