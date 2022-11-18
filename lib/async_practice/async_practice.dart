import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'async_practice_model.dart';

class AsyncPractice extends StatelessWidget {
  const AsyncPractice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AsyncPracticeModel>.reactive(
      viewModelBuilder: () => AsyncPracticeModel(),
      onModelReady: (model) {
        // model.initialize();
      },
      builder: (context, model, child) {
        return Scaffold(
            body: Column(
          children: [
            FutureBuilder(
              future: model.loadString(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) return CircularProgressIndicator();
                if (snapshot.hasData) {
                  return Card(
                    child: Text(snapshot.data ?? ""),
                  );
                } else {
                  return Container();
                }
              },
            )
          ],
        ));
      },
    );
  }
}
