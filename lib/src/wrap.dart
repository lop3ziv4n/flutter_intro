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

// Wrap example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Wrap)'),
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          //direction: Axis.vertical,
          spacing: 10.0,
          children: const [
            Tag(name: 'Metal Gear'),
            Tag(name: 'Counter Strike'),
            Tag(name: 'Overwatch'),
            Tag(name: 'CyberPunk'),
            Tag(name: 'LostArk'),
            Tag(name: 'Medal of Honor'),
            Tag(name: 'Smash'),
          ],
        ),
      ),
    );
  }
}

class Tag extends StatelessWidget {
  final String name;

  const Tag({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        child: Text(name[0]),
        backgroundColor: Colors.white,
      ),
      label: Text(
        name,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
