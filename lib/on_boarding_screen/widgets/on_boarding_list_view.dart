import 'package:flutter/material.dart';
import 'package:flutter_practice/on_boarding_screen/on_boarding_viewmodel.dart';
import 'package:stacked/stacked.dart';

class OnBoardingListView extends ViewModelWidget<OnboardingViewModel> {
  const OnBoardingListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, OnboardingViewModel viewModel) {
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: [
            Row(
              children: [
                SizedBox(height: 150,),
                Title(color: Colors.black, child: const Text("Full Name",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),),
                Flexible(
                  child: TextFormField(
                    onChanged: (value) {
                      viewModel.updateFirstName(value);
                    },
                    decoration: const InputDecoration(hintText: "First Name", border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: TextFormField(
                    onChanged: (value) {
                      viewModel.updateLastName(value);
                    },
                    decoration: InputDecoration(hintText: "Last name", border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Title(
                color: Colors.black,
                child: const Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            TextFormField(
              onChanged: (value) {
                viewModel.updateEmail(value);
              },
              decoration: const InputDecoration(hintText: "Enter Email", border: OutlineInputBorder()),
            )
          ],
        ),
      ],
    );
  }
}
