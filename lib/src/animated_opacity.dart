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

// Opacity example
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Opacity)'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.opacity_rounded),
        onPressed: () {
          setState(() {
            _opacity = _opacity == 1 ? 0 : 1;
          });
        },
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 50,
          children: [
            const Square(color: Colors.blue, opacity: 1),
            Square(color: Colors.green, opacity: _opacity),
            const Square(color: Colors.yellow, opacity: 1),
          ],
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  final Color color;
  final double opacity;
  const Square({Key? key, required this.color, required this.opacity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 600),
      curve: Curves.bounceIn,
      opacity: opacity,
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(color: color),
      ),
    );
  }
}
