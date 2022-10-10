import 'package:stacked/stacked.dart';

class FlossyScreenViewModel extends BaseViewModel{
  String? selectedLabel;

  void initialize(){

  }

  void updateLabel(String? label){
    selectedLabel = label;
    print('selected label $selectedLabel');
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

}