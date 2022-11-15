
import 'package:stacked/stacked.dart';
// fields:first name
//last name
//dob
//email
//phone
//question
//first name error
//last name error
//.. error
//all valid boolean
class OnBoardingViewModel extends BaseViewModel{
  String? firstName;
  String? firstNameError;
  String? lastName;
  String? lastNameError;
  String? dob;
  String? dobError;
  String? email;
  String? emailError;
  String? phone;
  String? phoneError;
  String? question;
  String? questionError;


  bool get allValid => firstNameError == null;

  void inputAndValidFirstName(String? firstName){
   this.firstName = firstName;
    // check for empty
   // String x = ""; // empty string
   // String? x; // null string
    if(firstName == null || firstName.isEmpty == true){
      firstNameError = "Required";
    } else if(firstName.length < 2){
      firstNameError = "Minimum 2 characters";
    } else {
      //remove error ==> first name is valid
      firstNameError = null;
    }
    notifyListeners();
  }

  void inputAndValidLastName(String? lastName){
    this.lastName = lastName = lastName;
    if(lastName == null || lastName.isEmpty == true){
      lastNameError = "Required";
    }else if(lastName.length < 2){
      lastNameError = "Minimum 2 characters";
    }
  }

  void inputAndValidDob(String dob){
    this.dob = dob;
  }

  void inputAndValidEmail(String email){
    this.email = email;
  }

  void inputAndValidPhone(String phone){
    this.phone = phone;
  }

  void inputAndValidQuestion(String question){
    this.question = question;
  }

}