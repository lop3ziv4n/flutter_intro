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

// Image example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Image)'),
      ),
      body: Center(
        child: Image.network(
          //'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Fa1%2F34%2Fae%2Fa134ae1a9401680c8e5cf880c7dc1e68.jpg&f=1&nofb=1',
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F9a%2F9b%2F77%2F9a9b771ae7e0aa29ed112af7d781823b.gif&f=1&nofb=1',
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
