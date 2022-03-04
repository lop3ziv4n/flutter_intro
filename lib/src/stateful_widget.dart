import 'dart:async';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // fontFamily: 'IndieFlower', // font example
      ),
      home: const MyHomePage(),
    );
  }
}

// StatefulWidget example
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String name = 'Marvin';
  double progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (value) {
      _onChange();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (StatefulWidget)'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 30),
            ),
            LinearProgressIndicator(
              value: progressValue,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: _onChange,
      ),
    );
  }

  void _onChange() {
    setState(() {
      if (name == 'Marvin') {
        name = 'Osiel';
      } else {
        name = 'Marvin';
      }
      progressValue += 0.01;
    });
  }
}
