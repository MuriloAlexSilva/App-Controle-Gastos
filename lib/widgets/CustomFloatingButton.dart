import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: null,
      child: Icon(Icons.add),
    );
  }
}
