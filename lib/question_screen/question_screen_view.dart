import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/flossy_screen/flossy_screen_view.dart';
import 'package:flutter_practice/main.dart';

class QuestionScreenView extends StatelessWidget {
  const QuestionScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Align(
                  child: Text("Flossy", style: flossyTextTheme.headlineLarge!.copyWith(color: Colors.black)),
                  alignment: Alignment.topLeft),
              SizedBox(
                height: 50.0,
              ),
              Align(
                child: Text(
                  'Do you currently have dental insurance?',
                  textAlign: TextAlign.center,
                  style: flossyTextTheme.headlineMedium!.copyWith(color: Colors.black),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/toothImage.png',
                fit: BoxFit.fitWidth,
                height: 200.0,
                width: 200.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      onPressed: (){
                        print("Yes button pressed");
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FlossyScreenView(),));
                      },
                      child: Text("Yes"),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith(
                          (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: (){
                        print("No button pressed");
                      },
                      child: Text('No'),style: ButtonStyle(shape: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.hovered)) return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      );
                      if (states.contains(MaterialState.disabled)) return RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      );
                      return  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      );
                    }),),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
