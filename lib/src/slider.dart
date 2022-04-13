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

// Slider example
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (Slider)'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _newSlider(),
            _checkBox(),
            _newSwitch(),
            Expanded(child: _newImagen()),
          ],
        ),
      ),
    );
  }

  Widget _newSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (value) {
              setState(() {
                _valorSlider = value;
              });
            },
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (value){
    //     setState(() {
    //       _bloquearCheck = value;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: const Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value!;
        });
      },
    );
  }

  Widget _newSwitch() {
    return SwitchListTile(
      title: const Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value;
        });
      },
    );
  }

  Widget _newImagen() {
    return Image(
      image: const NetworkImage(
          'http://pngimg.com/uploads/batman/batman_PNG111.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
