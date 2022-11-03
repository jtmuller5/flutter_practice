import 'package:flutter/material.dart';
import 'package:flutter_practice/to_do/to_do_page_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ToDoTextField extends ViewModelWidget<ToDoPageViewModel> {
  final TextEditingController _controller = TextEditingController();
  ToDoTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ToDoPageViewModel viewModel) {
    return Row(
      children: [
        Flexible(
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(hintText: "type task here", border: OutlineInputBorder()),
          ),
        ),
        const SizedBox(width: 20,),
        ElevatedButton(onPressed: () {
          viewModel.addTask(_controller.text);
          _controller.clear();
        }, child: const Text("Add")),
      ],
    );
  }
}
