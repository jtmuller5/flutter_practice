import 'package:flutter/material.dart';
import 'package:flutter_practice/on_boarding_screen/on_boarding_viewmodel.dart';
import 'package:stacked/stacked.dart';

class OnBoardingListView extends ViewModelWidget<OnboardingViewModel> {
  const OnBoardingListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, OnboardingViewModel viewModel) {
    return ListView(
      shrinkWrap: true,
        children: const [
          TextField(decoration: InputDecoration(hintText: "First Name"),
          ),
          TextField(decoration: InputDecoration(hintText: "Last name"),
          ),


      ],
    );
  }
}
