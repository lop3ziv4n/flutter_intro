import 'package:flutter/material.dart';

import 'second_page.dart';

// Navigator example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Navigator)'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('view other page'),
          onPressed: () {
            _showSecondPage(context);
          },
        ),
      ),
    );
  }

  _showSecondPage(BuildContext context) {
    // Inner Router
    /*
    final router = MaterialPageRoute(builder: (BuildContext context) {
      return const SecondPage(
        name: 'Marvin',
      );
    });
    Navigator.of(context).push(router);
     */
    // Main Router
    Navigator.of(context).pushNamed('/second',
        arguments: SecondPageArguments(name: 'Marvin', lastName: 'Oliver'));
  }
}
