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

// Icon example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Icon)'),
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            print('Button');
          },
          icon: const Icon(Icons.close),
          iconSize: 100,
        ),
        /* Icon(
          Icons.android, // https://fonts.google.com/icons
          size: 400,
          color: Colors.blue,
        ), */
      ),
    );
  }
}
