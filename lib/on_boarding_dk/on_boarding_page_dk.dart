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
                      Expanded(
                          child: MyTextField(
                        title: "Full Name",
                        hint: "First Name",
                        error: viewModel.firstNameError,
                        onChanged: (String value) {
                          viewModel.inputAndValidFirstName(value);
                        },
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: MyTextField(
                        hint: "Last Name",
                        onChanged: (String value) {},
                      )),
                    ],
                  ),
                  MyTextField(
                    title: "Year of Birth",
                    hint: "select",
                    onChanged: (String value) {},
                  ),
                  MyTextField(
                    title: "Email",
                    hint: "Enter Email",
                    onChanged: (String value) {},
                  ),
                  MyTextField(
                    title: "Phone Number",
                    hint: "Enter Phone Number",
                    onChanged: (String value) {},
                  ),
                  MyTextField(
                    title: "Do you have dental insurance",
                    hint: "select",
                    onChanged: (String value) {},
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      onPressed: viewModel.allValid
                          ? () async {
                        TimeOfDay? theTimeofDay = await showTimePicker(context: context, initialTime: const TimeOfDay(hour: 15, minute: 30));
                            print(theTimeofDay?.hour);
                          //   DateTime date = DateTime.now();
                          //     DateTime? selectedDateTime = await showDatePicker(
                          //         context: context,
                          //         initialDate: DateTime.now(),
                          //         firstDate: DateTime(date.year, date.month, date.day - 14 ),
                          //         lastDate: DateTime(date.year, date.month, date.day + 14 ),
                          //     );
                          //     print(selectedDateTime);

                              // showDialog(
                              //   barrierDismissible: false,
                              //   context: context,
                              //   builder: (context) {
                              //     return AlertDialog(
                              //       title: const Text(
                              //         "Thank you for stopping by",
                              //       ),
                              //       content: const Text("no really, thank you"),
                              //       actions: [
                              //         TextButton(
                              //           onPressed: () {
                              //             Navigator.of(context).pop();
                              //           },
                              //           child: const Text("yes"),
                              //         ),
                              //         TextButton(onPressed: () {
                              //           Navigator.of(context).pop();
                              //         }, child: const Text("no")),
                              //       ],
                              //     );
                              //   },
                              // );
                            }
                          : null,
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
        });
  }
}
