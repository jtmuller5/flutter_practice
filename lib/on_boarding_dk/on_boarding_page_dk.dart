import 'package:flutter/material.dart';
import 'package:flutter_practice/on_boarding_dk/on_boarding_viewmodel.dart';
import 'package:flutter_practice/on_boarding_dk/widgets/my_text_field.dart';
import 'package:stacked/stacked.dart';

class OnBoardingPageDk extends StatelessWidget {
  const OnBoardingPageDk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBoardingViewModel>.reactive(
      viewModelBuilder: () => OnBoardingViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Please tell us who the appointment is for."),
                // MyTextField(title: "Full Name", hint: "First Name", onChanged: (String value) {},),
                Row(
                  children: [
                    Expanded(child: MyTextField(title: "Full Name", hint: "First Name",error: viewModel.firstNameError,onChanged: (String value) {viewModel.inputAndValidFirstName(value);},)),
                    const SizedBox(width: 20,),
                    Expanded(child: MyTextField(hint: "Last Name", onChanged: (String value) {},)),
                  ],
                ),
                MyTextField(title: "Year of Birth", hint: "select", onChanged: (String value) {},),
                MyTextField(title: "Email", hint: "Enter Email", onChanged: (String value) {},),
                MyTextField(title: "Phone Number", hint: "Enter Phone Number", onChanged: (String value) {},),
                MyTextField(title: "Do you have dental insurance", hint: "select", onChanged: (String value) {},),
                ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                ),
                    onPressed: viewModel.allValid ? (){} : null,
                    child: const Text(
                      "See Your Dentist Matches",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
          ),
        );
      }
    );
  }
}
