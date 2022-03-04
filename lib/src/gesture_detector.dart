import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // fontFamily: 'IndieFlower', // font example
      ),
      home: const MyHomePage(),
    );
  }
}

// GestureDetector example
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (GestureDetector)'),
      ),
      body: Center(
        child: Column(
          children: const [
            ListItem(),
            ListItem(),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const [
            Icon(
              Icons.folder,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'My Videos',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap() {
    print('Hi');
  }
}
