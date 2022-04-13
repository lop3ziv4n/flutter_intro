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

// Card example
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Example (Cards)')),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          _cardOne(),
          const SizedBox(height: 30.0),
          _cardTwo(),
          const SizedBox(height: 30.0),
          _cardOne(),
          const SizedBox(height: 30.0),
          _cardTwo(),
          const SizedBox(height: 30.0),
          _cardOne(),
          const SizedBox(height: 30.0),
          _cardTwo(),
          const SizedBox(height: 30.0),
          _cardOne(),
          const SizedBox(height: 30.0),
          _cardTwo(),
          const SizedBox(height: 30.0),
          _cardOne(),
          const SizedBox(height: 30.0),
          _cardTwo(),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardOne() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Aquí estamos con la descripción de la tajera que quiero que ustedes vean para tener una idea de lo que quiero mostrarles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTwo() {
    final card = Column(
      children: [
        const FadeInImage(
          image: NetworkImage(
              'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
          placeholder: AssetImage('assets/spinner.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        // Image(
        //   image: NetworkImage('https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
        // ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: const Text('No tengo idea de que poner'),
        )
      ],
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0),
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
