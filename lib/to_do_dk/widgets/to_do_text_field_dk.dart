import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../to_do_page_viewmodel_dk.dart';

class ToDoTextFieldDk extends ViewModelWidget<ToDoPageViewModelDk> {
  const ToDoTextFieldDk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ToDoPageViewModelDk viewModel) {
    return Row(
      children:  [
        const Flexible(
          child: TextField(
            decoration: InputDecoration(hintText: "type here", border: OutlineInputBorder()),
          ),
        ),
        const SizedBox(width: 20,),
        ElevatedButton(onPressed: (){

        }, child:const Text("Add"),)
      ],
    );
  }
}
