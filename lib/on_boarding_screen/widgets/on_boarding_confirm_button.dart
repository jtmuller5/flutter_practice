import 'package:flutter/material.dart';
import 'package:flutter_practice/on_boarding_screen/on_boarding_viewmodel.dart';
import 'package:stacked/stacked.dart';

class OnboardingConfirmButton extends ViewModelWidget<OnboardingViewModel> {
  const OnboardingConfirmButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, OnboardingViewModel viewModel) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
          },
          child: const Text("See your Dentist Matches"),
        ),
      ],
    );
  }
}
