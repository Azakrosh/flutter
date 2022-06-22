import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _dropBool = true;

  void _onDescrTextBox() {
    setState(() {
      _dropBool = !_dropBool;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: _dropBool ? 50 : null,
                curve: Curves.fastOutSlowIn,
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  overflow:
                      _dropBool ? TextOverflow.clip : TextOverflow.visible,
                ),
              ),
              TextButton(
                onPressed: () => _onDescrTextBox(),
                child: Text(_dropBool ? 'Развернуть' : 'Свернуть'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
