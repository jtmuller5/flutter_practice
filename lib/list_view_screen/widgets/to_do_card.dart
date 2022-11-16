import 'package:flutter/material.dart';
import 'package:flutter_practice/list_view_screen/list_screen_view_model.dart';
import 'package:stacked/stacked.dart';

class ToDoCard extends ViewModelWidget<ListScreenViewModel> {
  const ToDoCard(this.toDoItems, {Key? key}) : super(key: key);
  final String toDoItems;


  @override
  Widget build(BuildContext context, ListScreenViewModel viewModel) {
    viewModel.toDoItems;
    return Card(
      child: ListTile(
        leading: Checkbox(
          checkColor: Colors.black,
          value: false,
          onChanged: (value) {},
        ),
        title: Text(toDoItems),
        trailing: IconButton(onPressed: () { viewModel.removeToDoTask(toDoItems);}, icon: const Icon(Icons.delete),),
      ),
    );
  }
}


