import 'package:stacked/stacked.dart';

class ToDoPageViewModel extends BaseViewModel {

  List<String> tasks = [];
  List<String> completedTasks = [];

  void removeTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }

  void addTask(String task) {
    tasks.add(task);
    notifyListeners();
  }

  void addCheckMark(String completedTask){
    completedTasks.add(completedTask);
    notifyListeners();
  }
}
