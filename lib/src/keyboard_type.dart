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

// KeyboardType example
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (KeyboardType'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name:'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Lastname:'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone Number:'),
                keyboardType: TextInputType.phone,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email Address:'),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Age:'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Web Site:'),
                keyboardType: TextInputType.url,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
