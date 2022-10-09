import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionScreenView extends StatelessWidget {
  const QuestionScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Flossy"),
            ],
          ),
        ),
      ),
    );
  }
}









