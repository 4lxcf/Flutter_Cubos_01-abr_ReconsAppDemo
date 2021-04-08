import 'package:flutter/material.dart';

class FloatActionButton extends StatelessWidget {
  final IconData icon;
  final Function fn;

  FloatActionButton(this.icon, this.fn);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(icon),
      onPressed: fn(),
    );
  }
}
