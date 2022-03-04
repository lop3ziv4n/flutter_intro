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

// FadeInImage example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (FadeInImage)'),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/spinner.gif',
          image: 'https://thispersondoesnotexist.com/image',
          height: 300,
          fadeInCurve: Curves.decelerate,
        ),
      ),
    );
  }
}
