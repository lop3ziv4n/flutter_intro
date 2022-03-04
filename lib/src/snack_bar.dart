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

// SnackBar example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (SnackBar)'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Show SnackBar'),
          onPressed: () => _showSnackBar(context),
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: const Text('Element SnackBar'),
      backgroundColor: Colors.deepPurple,
      action: SnackBarAction(
        label: 'Label',
        onPressed: () => print('SnackBar action'),
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
