import 'package:flutter/material.dart';
import 'package:flutter_practice/list_view_screen/widgets/to_do_card.dart';
import 'package:flutter_practice/list_view_screen/widgets/to_do_text.dart';
import 'package:stacked/stacked.dart';
import 'list_screen_view_model.dart';

class ListScreenView extends StatelessWidget {
  const ListScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ListScreenViewModel>.reactive(
      viewModelBuilder: () => ListScreenViewModel(),
      onModelReady: (model) {
        // model.initialize();
      },
      builder: (context, model, child) {
        return Scaffold(
          body: Column(
            children: [Flexible(
              child: ListView.separated(
                itemCount: model.toDoItem.length,
                itemBuilder: (context, index) {
                  return Flexible(child: ToDoCard(model.toDoItem[index]));
                }, separatorBuilder: (BuildContext context, int index) { return const Divider(color: Colors.black,); },
              ),
            ),  Flexible(child: ToDoText())
            ]
          ),
          // body: ListView(
          //   children: const [
          //     ToDoCard("laundry"),
          //     ToDoCard("Groceries"),
          //     ToDoCard("dishes"),
          //     ToDoCard("walk dog"),
          //   ],
          // )
        );
      },
    );
  }
}
