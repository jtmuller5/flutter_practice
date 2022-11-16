import 'package:stacked/stacked.dart';

class ListScreenViewModel extends BaseViewModel{
  List<String> toDoItems = [];

  void addToDoItem(String toDoItem){
    toDoItems.add(toDoItem);
    notifyListeners();
  }

  void removeToDoTask(String toDoItem){
    toDoItems.remove(toDoItem);
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}