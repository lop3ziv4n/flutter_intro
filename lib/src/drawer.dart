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
      home: MyHomePage(),
    );
  }
}

// Drawer example
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter Example (Drawer)'),
      ),
      body: const Center(
        child: Text(
          'Hello',
        ),
      ),
      drawer: _getDrawer(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.menu),
        onPressed: () => _scaffoldKey.currentState?.openDrawer(),
      ),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('Account name lastname'),
            accountEmail: const Text('Account email address'),
            currentAccountPicture: const FlutterLogo(),
            otherAccountsPictures: const [
              FlutterLogo(),
              FlutterLogo(),
            ],
            onDetailsPressed: () {},
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurpleAccent, Colors.lightBlueAccent],
                begin: Alignment.bottomLeft,
              ),
            ),
          ),
          /*
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blueAccent),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                FlutterLogo(
                  size: 120,
                ),
                Text(
                  'Drawer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),*/
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () => _showHome(context),
          )
        ],
      ),
    );
  }

  void _showHome(BuildContext context) {
    Navigator.pop(context);
  }
}
