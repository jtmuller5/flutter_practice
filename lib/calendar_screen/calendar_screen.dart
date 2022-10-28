import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/calendar_screen/calendar_day.dart';
import 'package:stacked/stacked.dart';

import 'calendar_view.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //3 parts to stacked architecture
    //part 2: viewmodel providing our model for all the widgets below. w out it widgets dont know calendar model exists
    return ViewModelBuilder<CalendarScreenModel>.reactive(
      viewModelBuilder: () => CalendarScreenModel(),
      builder: (context, viewModel, child) => const Scaffold(
        body: Center(child: CalendarView()),
          ),
    );
  }
}

//component holds on to state of app and keeps track of our calendar we can call this calendar.gotonextmonth
// part 1: viewmodels hold all of the business logic, properties we want to access across diff widgets, methods,
class CalendarScreenModel extends BaseViewModel {
  DateTime? selectedDate;

  void setSelectedDate(DateTime newDate) {
    selectedDate = newDate;
    //part 4 notify listeners it will notify widgets to rebuild w new value
    notifyListeners();
  }
}
