import 'dart:async';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

// Inifinite Scroll example
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();
  final List<int> _listNumers = [];
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addItems();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Infinite Scroll)'),
      ),
      body: Stack(
        children: [
          _newList(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _newList() {
    return RefreshIndicator(
      onRefresh: getPageOne,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listNumers.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listNumers[index];
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
            placeholder: const AssetImage('assets/spinner.gif'),
          );
        },
      ),
    );
  }

  Future<void> getPageOne() async {
    const duration = Duration(seconds: 2);
    Timer(duration, () {
      _listNumers.clear();
      _lastItem++;
      _addItems();
    });
    return Future.delayed(duration);
  }

  void _addItems() {
    for (var i = 1; i < 10; i++) {
      _lastItem++;
      _listNumers.add(_lastItem);
    }
    setState(() {});
  }

  Future<Timer> fetchData() async {
    _isLoading = true;
    setState(() {});
    return Timer(const Duration(seconds: 2), responseHTTP);
  }

  void responseHTTP() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn,
        duration: const Duration(milliseconds: 250));
    _addItems();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
            ],
          ),
          const SizedBox(height: 15.0)
        ],
      );
    } else {
      return Container();
    }
  }
}
