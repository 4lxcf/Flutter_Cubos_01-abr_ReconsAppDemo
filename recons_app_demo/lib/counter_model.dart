class CounterModel {
  int _counter = 0;

  int get counter {
    return _counter;
  }

  void modifierCounter(Function(int, int) fn, int value) {
    _counter = fn(_counter, value);
  }
}
