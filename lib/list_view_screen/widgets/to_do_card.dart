import 'package:flutter/material.dart';
import 'package:flutter_practice/list_view_screen/list_screen_view_model.dart';
import 'package:stacked/stacked.dart';

class ToDoCard extends ViewModelWidget<ListScreenViewModel> {
  const ToDoCard(this.toDoItem, {Key? key}) : super(key: key);
  final String toDoItem;

  @override
  Widget build(BuildContext context, model) {
    return Row(
      children: [
        Text(toDoItem),
        Checkbox(
          value: true,
          onChanged: (value) {},
        )
      ],
    );
  }
}
