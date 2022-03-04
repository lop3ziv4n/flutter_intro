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

// Button example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Button)'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(color: Colors.white),
                ),
              ),
              onPressed: _onPress,
              child: const Text('ElevatedButton'),
            ),
            TextButton(
              onPressed: _onPress,
              child: const Text('TextButton'),
            ),
            IconButton(
              onPressed: _onPress,
              icon: const Icon(Icons.check),
            ),
            OutlinedButton(
              onPressed: _onPress,
              child: const Text(
                'OutlinedButton',
                style: TextStyle(fontSize: 30),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: const BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onPress() {}
}
