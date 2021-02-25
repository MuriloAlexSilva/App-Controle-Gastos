import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushNamed("/novaTransacao").then(
              (newTransacao) => debugPrint(newTransacao.toString()),
            );
      },
      child: Icon(
        Icons.add,
        size: 30,
      ),
    );
  }
}
