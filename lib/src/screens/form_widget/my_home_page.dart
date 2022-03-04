import 'package:flutter/material.dart';

import 'second_page.dart';

// Widget Form example
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String nameValue;
  late String lastnameValue;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Widget Form)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name:'),
                onSaved: (value) {
                  nameValue = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Not Null';
                  }
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Lastname:'),
                onSaved: (value) {
                  lastnameValue = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Not Null';
                  }
                },
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
      ),
    );
  }

  _showSecondPage(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.of(context).pushNamed('/second',
          arguments:
              SecondPageArguments(name: nameValue, lastName: lastnameValue));
    }
  }
}
