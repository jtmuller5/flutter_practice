import 'package:flutter/material.dart';
import 'package:flutter_practice/to_do/to_do_page_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ToDoTaskList extends ViewModelWidget<ToDoPageViewModel> {
  const ToDoTaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ToDoPageViewModel viewModel) {
    return ListView.builder(
      itemCount: viewModel.tasks.length,
      itemBuilder: (context, index) {
        //remove
        //add with index
        // get item with index!!!
        final String item = viewModel.tasks[index];
        return Card(
          child: ListTile(
            leading: Checkbox(
              checkColor: Colors.black,
              value: viewModel.completedTasks.contains(item),
              onChanged: (value) {
                if (viewModel.completedTasks.contains(item)) {
                  viewModel.completedTasks.remove(item);
                  viewModel.notifyListeners();
                } else {
                  viewModel.addCheckMark(item);
                }
              },
            ),
            title: Text(item),
            trailing: IconButton(
              icon: const Icon(
                Icons.delete,
              ),
              onPressed: () {
                viewModel.removeTask(index);
              },
            ),
          ),
        );
      },
    );
  }
}
