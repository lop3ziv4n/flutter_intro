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

// Columns example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Column)'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.orange,
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.blue,
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.green,
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.yellow,
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.red,
            height: 50,
            width: 50,
          ),
          Container(
            color: Colors.black,
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}
