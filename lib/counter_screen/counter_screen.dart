import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/calendar_screen/calendar_day.dart';
import 'package:stacked/stacked.dart';


class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //3 parts to stacked architecture
    //part 2: viewmodel providing our model for all the widgets below. w out it widgets dont know calendar model exists
    return ViewModelBuilder<CounterScreenModel>.reactive(
      viewModelBuilder: () => CounterScreenModel(),
      builder: (context, viewModel, child) => Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()=> viewModel.decramentCurrentCount(),
                child: const Text("subtract")),
            Center(
              child: Text("${viewModel.currentCount}", style: TextStyle(fontSize:viewModel.currentCount.isEven ? 30 :15),),
            ),
            ElevatedButton(
              onPressed: () => viewModel.incramentCurrentCount(),
              child: const Text("add"),
            ),
          ],
        ),
      ),
    );
  }
}

//component holds on to state of app and keeps track of our calendar we can call this calendar.gotonextmonth
// part 1: viewmodels hold all of the business logic, properties we want to access across diff widgets, methods,
class CounterScreenModel extends BaseViewModel {

  int currentCount = 1;

  void incramentCurrentCount() {
    currentCount++;
    print("$currentCount");
    notifyListeners();
  }

  void decramentCurrentCount(){
    currentCount--;
    notifyListeners();
  }
}
