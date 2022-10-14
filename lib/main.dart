import 'package:flutter/material.dart';
import 'package:flutter_practice/flossy_screen/flossy_screen_view.dart';
import 'package:flutter_practice/question_screen/question_screen_view.dart';
import 'package:flutter_practice/slider_screen/slider_screen_view.dart';
import 'package:google_fonts/google_fonts.dart';

import 'more_details/more_details_view.dart';

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
      home:  const SliderScreenView(),


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

TextTheme flossyTextTheme = GoogleFonts.poppinsTextTheme(const TextTheme(
  // Labels are used on buttons, small - w400, m - w600, l - w800
  labelSmall: TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),
  labelMedium: TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  ),
  labelLarge: TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),

  // Body text uses regular weight, w400
  bodySmall: TextStyle(
    fontSize: 14,
    color: Colors.grey,
    fontWeight: FontWeight.w400,
  ),
  bodyMedium: TextStyle(
    fontSize: 16.0,
    color: Colors.grey,
    fontWeight: FontWeight.w400,
  ),
  bodyLarge: TextStyle(
    fontSize: 18,
    color: Colors.grey,
    fontWeight: FontWeight.w400,
  ),

  // Titles use semi-bold weight, w600
  titleSmall: TextStyle(
    fontSize: 16.0,
    color: Colors.grey,
    fontWeight: FontWeight.w700,
  ),
  titleMedium: TextStyle(
    fontSize: 18.0,
    color: Colors.grey,
    fontWeight: FontWeight.w700,
  ),
  titleLarge: TextStyle(
    fontSize: 22.0,
    color: Colors.grey,
    fontWeight: FontWeight.w700,
  ),

  // Headlines use bold, w700
  headlineSmall: TextStyle(
    fontSize: 24.0,
    color: Colors.grey,
    fontWeight: FontWeight.w700,
  ),
  headlineMedium: TextStyle(
    fontSize: 28.0,
    color: Colors.grey,
    fontWeight: FontWeight.w700,
  ),
  headlineLarge: TextStyle(
    fontSize: 32.0,
    color: Colors.grey,
    fontWeight: FontWeight.w700,
  ),

  // Displays use bold weight, w600
  displaySmall: TextStyle(
    fontSize: 36.0,
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  ),
  displayMedium: TextStyle(
    fontSize: 45.0,
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  ),
  displayLarge: TextStyle(
    fontSize: 64.0,
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  ),
));