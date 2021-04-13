import 'package:recons_app_demo/counter_model.dart';

class CounterController {
  final model = CounterModel();

  String get counter {
    return model.counter.toString();
  }

  void incrementCounter() {
    model.modifierCounter(add, 1);
  }

  int add(int n1, int n2) {
    return n1 + n2;
  }
}
