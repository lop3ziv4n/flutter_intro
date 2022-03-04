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

// AlertDialog example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (AlertDialog)'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Show AlertDialog'),
          onPressed: () => _showAlertDialog(context),
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext build) {
        return AlertDialog(
          title: const Text('AlertDialog'),
          content: const Text('Close de windows?'),
          actions: <Widget>[
            TextButton(
              child: const Text('No'),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        );
      },
      barrierDismissible: false,
    );
  }
}
