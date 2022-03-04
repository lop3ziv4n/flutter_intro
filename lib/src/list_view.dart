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

// ListView example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (ListView)'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            'https://picsum.photos/id/$index/200/200',
            height: 200,
          );
          /*return ListTile(
            title: Text(WordPair.random().asPascalCase),
            leading: const Icon(Icons.person),
            onTap: () {
              print(index);
            },
          );*/
        },
      ),
    );
  }
}
