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

// FocusNode example
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late FocusNode nameFocus;
  late FocusNode lastnameFocus;
  late FocusNode phoneFocus;
  late FocusNode emailFocus;
  late FocusNode ageFocus;
  late FocusNode websiteFocus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Example (FocusNode'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name:'),
                focusNode: nameFocus,
                onEditingComplete: () => requestFocus(context, lastnameFocus),
                textInputAction: TextInputAction.next, // Change Type button keyboard
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Lastname:'),
                focusNode: lastnameFocus,
                onEditingComplete: () => requestFocus(context, phoneFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Phone Number:'),
                keyboardType: TextInputType.phone,
                focusNode: phoneFocus,
                onEditingComplete: () => requestFocus(context, emailFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email Address:'),
                keyboardType: TextInputType.emailAddress,
                focusNode: emailFocus,
                onEditingComplete: () => requestFocus(context, ageFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Age:'),
                keyboardType: TextInputType.number,
                focusNode: ageFocus,
                onEditingComplete: () => requestFocus(context, websiteFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Web Site:'),
                keyboardType: TextInputType.url,
                focusNode: websiteFocus,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  @override
  void initState() {
    super.initState();
    nameFocus = FocusNode();
    lastnameFocus = FocusNode();
    phoneFocus = FocusNode();
    emailFocus = FocusNode();
    ageFocus = FocusNode();
    websiteFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    nameFocus.dispose();
    lastnameFocus.dispose();
    phoneFocus.dispose();
    emailFocus.dispose();
    ageFocus.dispose();
    websiteFocus.dispose();
  }
}
