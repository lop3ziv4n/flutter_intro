import 'package:flutter/material.dart';

// AnimationHero example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (AnimationHero)'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          final url = 'https://picsum.photos/id/$index/400/300';
          return InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed('/second', arguments: url),
            child: Hero(
              tag: url,
              child: Card(
                child: FadeInImage(
                  image: NetworkImage(url),
                  placeholder: const AssetImage('assets/spinner.gif'),
                  height: 300,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
