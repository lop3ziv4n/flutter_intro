import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

// Color example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Color)'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blue[200],
            height: 100,
            width: 100,
          ),
          Container(
            color: Colors.green[900],
            height: 100,
            width: 100,
          ),
          Container(
            color: const Color(0xffaa00ff).withOpacity(0.5),
            //(alpha, red, green, blue)
            height: 100,
            width: 100,
          ),
          Container(
            color: const Color.fromRGBO(29, 209, 254, 0.5),
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
