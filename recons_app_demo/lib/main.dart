import 'package:flutter/material.dart';

import 'package:recons_app_demo/counter_controller.dart';
import 'package:recons_app_demo/float_action_button.dart';

main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
