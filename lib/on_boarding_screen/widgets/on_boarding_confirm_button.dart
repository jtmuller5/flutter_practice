import 'package:flutter/material.dart';
import 'package:flutter_practice/on_boarding_screen/on_boarding_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/src/material/colors.dart';

import '../../to_do/to_do_page.dart';

class OnboardingConfirmButton extends ViewModelWidget<OnboardingViewModel> {
  const OnboardingConfirmButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, OnboardingViewModel viewModel) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            // style: BorderRadius(BorderRadius.circular(8),),
            onPressed: () {
              print("First name: ${viewModel.firstName}");
              print(viewModel.lastName);
              print(viewModel.email);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ToPage()),
              );
            },
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                backgroundColor: Colors.deepOrangeAccent),
            child: const Text(
              "See your Dentist Matches",
              style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}
