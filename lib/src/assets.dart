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

// Assets example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Assets)'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset("assets/image1.jpeg"),
          Image.asset("assets/image2.jpeg"),
          Image.asset("assets/image3.jpeg"),
          Image.asset("assets/image4.jpeg"),
        ],
      ),
    );
  }
}
