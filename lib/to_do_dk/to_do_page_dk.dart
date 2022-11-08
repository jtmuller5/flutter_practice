import 'package:flutter/material.dart';
import 'package:flutter_practice/to_do_dk/to_do_page_viewmodel_dk.dart';
import 'package:flutter_practice/to_do_dk/widgets/to_do_text_field_dk.dart';
import 'package:stacked/stacked.dart';

class ToDoPage extends StatelessWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ToDoPageViewModelDk>.reactive(
      viewModelBuilder: () => ToDoPageViewModelDk(),
      builder: (context, viewModel, _) => const Scaffold(
        body: Center(
          child: ToDoTextFieldDk( ),

        ),
      ),
    );
  }
}
