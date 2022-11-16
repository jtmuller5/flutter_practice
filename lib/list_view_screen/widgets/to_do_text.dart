import 'package:flutter/material.dart';
import 'package:flutter_practice/list_view_screen/list_screen_view_model.dart';
import 'package:stacked/stacked.dart';

class ToDoText extends ViewModelWidget<ListScreenViewModel> {
  ToDoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ListScreenViewModel viewModel) {
    final TextEditingController _controller = TextEditingController();
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Align(alignment: Alignment.bottomCenter),
          Flexible(
            child: TextField(
              controller:_controller,
              decoration: InputDecoration(
                hintText: ("What do you need to do today?"),
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
            onPressed: (){
              viewModel.addToDoItem(_controller.text);
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
                padding: MaterialStateProperty.all(EdgeInsets.all(20))),
            child: const Text("Add", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
