import 'package:flutter/material.dart';

import 'counter_controller.dart';
import 'float_action_button.dart';

class CounterView extends StatefulWidget {
  CounterView({Key key}) : super(key: key);

  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quantas vezes este botão foi pressionado:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              controller.counter,
              style: TextStyle(fontSize: 26),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatActionButton(
            Icons.remove,
            () {
              setState(() {
                controller.decrementCounter();
              });
            },
          ),
          FloatActionButton(
            Icons.add,
            () {
              setState(() {
                controller.incrementCounter();
              });
            },
          ),
        ],
      ),
    );
  }
}
