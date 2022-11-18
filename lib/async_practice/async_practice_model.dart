import 'package:stacked/stacked.dart';

class AsyncPracticeModel extends BaseViewModel {
  Future<String> loadString() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    return "large latte";
  }

  void initialize() {}

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
