import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: ColoredBox(color: Colors.red),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: ColoredBox(color: Colors.yellow),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: ColoredBox(color: Colors.green),
          ),
        ],
      ),
    );
  }
}
