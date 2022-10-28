import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/calendar_screen/calendar_screen.dart';
import 'package:stacked/stacked.dart';

// part 3: viewmodel widget will react to any changes happening in the model
class CalendarDay extends ViewModelWidget<CalendarScreenModel> {
  CalendarDay({Key? key, required this.date}) : super(key: key);
  DateTime date;

  @override
  Widget build(BuildContext context, CalendarScreenModel model) {
    return InkWell(
      onTap: () {
        model.setSelectedDate(date);
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
              color: model.selectedDate == date ? Colors.orangeAccent : Colors.deepOrange,
              borderRadius: BorderRadius.circular(4.0)),
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                date.day.toString(),
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
