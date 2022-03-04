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

// Rows example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Row)'),
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
