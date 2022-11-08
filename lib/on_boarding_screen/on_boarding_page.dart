import 'package:flutter/material.dart';
import 'package:flutter_practice/on_boarding_screen/on_boarding_viewmodel.dart';
import 'package:flutter_practice/on_boarding_screen/widgets/on_boarding_confirm_button.dart';
import 'package:flutter_practice/on_boarding_screen/widgets/on_boarding_list_view.dart';
import 'package:stacked/stacked.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
      viewModelBuilder: () => OnboardingViewModel(),
      builder: (context, viewModel, _) {
        return  Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  OnBoardingListView(),
                  Expanded(child: OnboardingConfirmButton()),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}




