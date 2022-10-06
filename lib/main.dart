import 'package:flutter/material.dart';
import 'package:flutter_practice/flossy_screen/flossy_screen_view.dart';

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
      home: const FlossyScreenView(),
    );
  }
  //test
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('hello'),
      ),
      appBar: AppBar(title: Text('Joe\'s App')),
      body: Align(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: const SizedBox(
                  height: 100,
                  width: 100,
                  child: ColoredBox(color: Color.fromARGB(255, 246, 246, 246)),
                ),
              ),
              Flexible(
                flex: 10,
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: ColoredBox(color: Color.fromARGB(255, 236, 167, 212)),
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: ColoredBox(color: Color.fromARGB(255, 192, 255, 194)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'hola',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.alarm_rounded), label: 'hola1'),
        ],
        onTap: (value) {
          print(value.toString());
        },
      ),
    );
  }
}
