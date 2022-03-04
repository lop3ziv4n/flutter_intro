import 'package:flutter/material.dart';

import 'second_page.dart';

// Form without Widget Form example
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController nameTextController;
  late TextEditingController lastnameTextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Form without Widget Form)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Name:'),
              controller: nameTextController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Lastname:'),
              controller: lastnameTextController,
            ),
            ElevatedButton(
              child: const Text('view other page'),
              onPressed: () {
                _showSecondPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed('/second',
        arguments: SecondPageArguments(
            name: nameTextController.text,
            lastName: lastnameTextController.text));
  }

  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController();
    lastnameTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameTextController.dispose();
    lastnameTextController.dispose();
  }
}
