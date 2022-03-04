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

// Margin Padding example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Margin Padding)'),
      ),
      body: Container(
        color: Colors.orange,
        height: 200,
        width: 200,
        margin: const EdgeInsets.all(10),
        // space out container
        // padding: const EdgeInsets.all(10), // space in container
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            '------',
            style: TextStyle(backgroundColor: Colors.black, fontSize: 60),
          ),
        ),
      ),
    );
  }
}
