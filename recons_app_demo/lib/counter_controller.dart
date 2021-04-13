import 'package:recons_app_demo/counter_model.dart';

class CounterController {
  final model = CounterModel();

  String get counter {
    return model.counter.toString();
  }

  void incrementCounter() {
    model.modifierCounter(_add, 1);
  }

  void decrementCounter() {
    model.modifierCounter(_sub, 1);
  }

  int _add(int n1, int n2) {
    return n1 + n2;
  }

  int _sub(int n1, int n2) {
    return n1 - n2;
  }
}
