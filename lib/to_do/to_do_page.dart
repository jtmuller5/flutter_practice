import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_practice/to_do/to_do_page_viewmodel.dart';
import 'package:flutter_practice/to_do/widgets/to_do_task_list.dart';
import 'package:flutter_practice/to_do/widgets/to_do_text_field.dart';
import 'package:stacked/stacked.dart';

class ToPage extends StatelessWidget {
  const ToPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ToDoPageViewModel>.reactive(
        viewModelBuilder: () => ToDoPageViewModel(),
        builder: (context, viewModel, _) {
          return Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Expanded(child: ToDoTaskList()),
                    Text("Tasks" + viewModel.tasks.toString()),
                    Text("completed tasks" + viewModel.completedTasks.toString()),
                    ToDoTextField(),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
