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

// SimpleDialog example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (SimpleDialog)'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Show SimpleDialog'),
          onPressed: () => _showSimpleDialog(context),
        ),
      ),
    );
  }

  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext build) {
        return SimpleDialog(
          title: const Text('SimpleDialog'),
          children: <Widget>[
            ListTile(
              title: const Text('Delete'),
              leading: const Icon(Icons.delete),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Edit'),
              leading: const Icon(Icons.edit),
              onTap: () {
                Navigator.pop(context);
              },
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
