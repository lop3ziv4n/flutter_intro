import 'package:flutter/material.dart';

import 'screens/menu/second_page.dart';
import 'screens/menu/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }
}

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const MyHomePage(),
    'alert': (BuildContext context) => const SecondPage(),
    'avatar': (BuildContext context) => const SecondPage(),
    'card': (BuildContext context) => const SecondPage(),
    'animatedContainer': (BuildContext context) => const SecondPage(),
    'inputs': (BuildContext context) => const SecondPage(),
    'slider': (BuildContext context) => const SecondPage(),
    'list': (BuildContext context) => const SecondPage(),
  };
}
