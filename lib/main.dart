import 'package:flutter/material.dart';
import 'package:roll_dice_app/grediant_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('hello world'),
        // ),
        body: GradientContainer(colors: [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 94, 12, 234)
        ]),
      ),
    );
  }
}
