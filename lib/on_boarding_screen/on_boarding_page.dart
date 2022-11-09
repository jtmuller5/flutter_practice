import 'dart:typed_data';

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
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Container()),
                  const Expanded(flex: 4, child: OnBoardingListView()),
                  Row(
                    children: [
                      Icon(Icons.access_alarms,color: viewModel.firstName == ""  || viewModel.firstName == null ?  Colors.red : Colors.green),
                      Icon(Icons.access_alarms, color: viewModel.lastName == "" || viewModel.lastName == null ? Colors.orange : Colors.yellow),
                      Icon(Icons.access_alarms),
                    ],
                  ),
                  const Expanded(
                    child: Align(alignment: Alignment.bottomCenter, child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: OnboardingConfirmButton(),
                    )),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
