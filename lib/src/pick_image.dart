import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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

// plugin PickImage example
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
        title: const Text('Flutter Example (plugin PickImage)'),
      ),
      body: Center(
        child: getImageWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _showOptions(context),
      ),
    );
  }

  XFile? _image;

  Widget getImageWidget() {
    if (_image == null) {
      return const Text('Selected image');
    }
    return Image.file(File(_image!.path));
  }

  void _getImage(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    var image = await _picker.pickImage(source: source);

    setState(() {
      _image = image!;
    });
  }

  void _showOptions(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: <Widget>[
            ListTile(
              title: const Text('Camera'),
              leading: const Icon(Icons.camera_alt),
              onTap: () {
                Navigator.pop(context);
                _getImage(ImageSource.camera);
              },
            ),
            ListTile(
              title: const Text('Gallery'),
              leading: const Icon(Icons.image),
              onTap: () {
                Navigator.pop(context);
                _getImage(ImageSource.gallery);
              },
            ),
          ],
        );
      },
    );
  }
}
