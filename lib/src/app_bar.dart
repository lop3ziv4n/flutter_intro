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

// AppBar example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (AppBar)'),
        actions: const <Widget>[
          IconButton(onPressed: _onClick, icon: Icon(Icons.add)),
          IconButton(onPressed: _onClick, icon: Icon(Icons.remove)),
        ],
        elevation: 30,
        // Shadow
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading:
            const IconButton(onPressed: _onClick, icon: Icon(Icons.arrow_back)),
      ),
      body: const Center(),
    );
  }
}

void _onClick() {
  print('OnPressed');
}
