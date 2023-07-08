import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(MyApp));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Number Trive',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
