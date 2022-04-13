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

// ListView - ListTile example
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Person> _persons = [
    Person("Peter", "Parker", "1568495236"),
    Person("Anthony", "Stark", "1568585217"),
    Person("Wanda", "Maximoff", "1599495288"),
    Person("Bruce", "Banner", "1586195586"),
    Person("Carol", "Danvers", "1511895205"),
    Person("Peter", "Quill", "1562495690")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (ListView - ListTile)'),
      ),
      body: ListView.builder(
        itemCount: _persons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_persons[index].name + ' ' + _persons[index].lastname),
            subtitle: Text(_persons[index].phone),
            leading: CircleAvatar(
              child: Text(
                _persons[index].name.substring(0, 1),
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onLongPress: () {
              _deletePerson(context, _persons[index]);
            },
          );
        },
      ),
    );
  }

  _deletePerson(context, Person person) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete Person'),
        content: Text('are you sure to eliminate ' + person.name + '?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Canceled'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _persons.remove(person);
              });
              Navigator.pop(context);
            },
            child: const Text(
              'Borrar',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

class Person {
  String name;
  String lastname;
  String phone;

  Person(this.name, this.lastname, this.phone);
}
