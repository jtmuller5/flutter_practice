import 'package:stacked/stacked.dart';

class ToDoPageViewModel extends BaseViewModel {

  List<String> tasks = <String>[];

  void removeTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }

  void addTask(String task) {
    tasks.add(task);
    notifyListeners();
  }
}
