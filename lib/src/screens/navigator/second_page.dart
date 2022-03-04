import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // Inner Router
  /*
  const SecondPage({Key? key, required this.name}) : super(key: key);

  final String name;
   */

  // Main Router
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Main Router
    SecondPageArguments? arguments =
        ModalRoute.of(context)?.settings.arguments as SecondPageArguments?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (SecondPage)'),
      ),
      body: Center(
        child: Text(arguments!.name),
      ),
    );
  }
}

class SecondPageArguments {
  String name;
  String lastName;

  SecondPageArguments({required this.name, required this.lastName});
}
