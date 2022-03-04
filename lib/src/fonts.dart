import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'IndieFlower', // font example
      ),
      home: const MyHomePage(),
    );
  }
}

// Fonts example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Fonts)'),
      ),
      body: const Text(
        'Where can I get some? There are many variations of passages of '
        'Lorem Ipsum available, but the majority have suffered alteration in some '
        'form, by injected humour, or randomised words which dont look even slightly'
        ' believable. If you are going to use a passage of Lorem Ipsum, you need to be '
        'sure there isnt anything embarrassing hidden in the middle of text. All the Lorem '
        'Ipsum generators on the Internet tend to repeat predefined chunks as necessary, '
        'making this the first true generator on the Internet. It uses a dictionary of '
        'over 200 Latin words, combined with a handful of model sentence structures, to'
        ' generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is '
        'therefore always free from repetition, injected humour, or non-characteristic '
        'words etc.',
        style: TextStyle(
          fontFamily: 'Orbitron',
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
