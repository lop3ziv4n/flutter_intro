import 'package:flutter/material.dart';

import 'screens/navigator/my_home_page.dart';
import 'screens/navigator/second_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Inner Router
      //home: const MyHomePage(),
      // Main Router
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const MyHomePage(),
        '/second': (BuildContext context) => const SecondPage(),
      },
    );
  }
}
