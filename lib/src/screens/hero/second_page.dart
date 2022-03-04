import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final url = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (SecondPage AnimationHero)'),
      ),
      body: Hero(
        tag: url,
        child: Image.network(url),
      ),
    );
  }
}
