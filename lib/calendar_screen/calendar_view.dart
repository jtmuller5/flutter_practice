import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_practice/calendar_screen/calendar_day.dart';
import 'package:intl/intl.dart';

enum _ButtonAction {
  Idle,
  Forward,
  Backwards,
}

class CalendarView extends StatefulWidget {
  static const _maxCrossAxis = 7;

  const CalendarView({Key? key}) : super(key: key);

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  final _startDate = DateTime(2022);
  late DateTime _currentDate;
  final _listDate = <DateTime>{};

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      create();
    });
  }

  void create() {
    _currentDate = _startDate;
    _listDate.addAll(List.generate(35, (index) {
      final date = _currentDate.add(Duration(days: index));
      return date;
    }));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _arrows(),
          Text(getMonthStringFromDate(_currentDate)),
          Text(getYearStringFromDate(_currentDate)),
          GridView.count(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            crossAxisCount: CalendarView._maxCrossAxis,
            children: _listDate.map((date) => CalendarDay(date: date)).toList(),
          ),
        ],
      ),
    );
  }


  Widget _arrows(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: Icon(Icons.arrow_back_ios_new),onPressed: (){}),
        IconButton(icon: Icon(Icons.arrow_forward_ios),onPressed: (){}),
      ],
    );
  }

  String getMonthStringFromDate(DateTime date) {
    return DateFormat("MMMM").format(date);
  }

  String getYearStringFromDate(DateTime date) {
    return DateFormat("yyyy").format(date);
  }
}
