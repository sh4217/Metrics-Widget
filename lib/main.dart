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

  String body = 'Upper body';
  String weight = '45';

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

          // TextButton(
          //   child: Text(
          //     'why'
          //   ),
          //   onPressed: () {
          //     setState(() {
          //       body = 'Core';
          //     });
          //   },
          // ),

            const SizedBox(
              height: 50,
            ),

            TextField(
              controller: bodyController,
            ),

            TextButton(
              child: Text(
                'Update body part'
              ),
              onPressed: () {
                setState(() {
                  body = bodyController.text;
                });
              },
            ),

            const SizedBox(
              height: 50,
            ),

            TextField(
              controller: weightController,
            ),

            TextButton(
              child: Text(
                  'Update weight'
              ),
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
