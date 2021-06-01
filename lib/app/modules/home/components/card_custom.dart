import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardCustom extends StatelessWidget {
  final String text;
  final String route;

  CardCustom({this.text, this.route});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(top: 20, right: 10, left: 10),
        elevation: 0.0,
        color: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.elliptical(210, 60),
              bottomLeft: Radius.circular(20)),
        ),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.elliptical(210, 60),
                  bottomLeft: Radius.circular(20)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.blue])),
          child: InkWell(
            splashColor: Colors.indigo,
            onTap: () {
              Modular.to.pushNamed(route);
            },
            child: Row(
              children: [
                Expanded(
                    child: Center(
                        child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )))
              ],
            ),
          ),
        ));
  }
}
