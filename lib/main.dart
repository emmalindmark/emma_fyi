import 'package:flutter/material.dart';

void main() {
  runApp(const EmmaApp());
}

class EmmaApp extends StatelessWidget {
  const EmmaApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const name = 'Emma Lindmark';
    return MaterialApp(
      title: name,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const InfoPage(title: name),
    );
  }
}

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      alignment: Alignment.center,
      child: Text(
        title,
        style: const TextStyle(color: Colors.orange, fontSize: 30),
      ),
    );
  }
}
