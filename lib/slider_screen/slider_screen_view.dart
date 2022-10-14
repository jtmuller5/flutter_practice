import 'package:flutter/material.dart';

import '../widget/flossy_slider.dart';
import '../widget/flossy_title.dart';

class SliderScreenView extends StatelessWidget {
  const SliderScreenView({Key? key}) : super(key: key);

  // double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const FlossyTitle(text: "Flossy"),
          centerTitle: false,
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/ic_toothpaste.png"),
              const FlossyTitle(text: "How do you feel about\ngoing to the dentist?", alignment: TextAlign.center),
              const SizedBox(height: 30.0,),
              FlossySlider(
                color: Colors.orange,
                startText: "Nervous",
                endText: "Excited",
                onChanged: (value){
                  print("$value");
                }
              ),
            ],
          ),
        ));
  }
}
