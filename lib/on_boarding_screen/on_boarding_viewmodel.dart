import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../to_do/to_do_page.dart';

class OnboardingViewModel extends BaseViewModel {
  String? firstName;
  String? lastName;
  String? email;

  void nextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ToPage()),
    );
  }

  void updateFirstName(String newFirstName){
    firstName = newFirstName;
    notifyListeners();

  }
  void updateLastName(String newLastName){
    lastName = newLastName;
    notifyListeners();

  }
  void updateEmail(String newEmail){
    email = newEmail;
    notifyListeners();

  }
}
