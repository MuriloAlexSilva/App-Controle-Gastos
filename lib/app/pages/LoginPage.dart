import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 1, child: SizedBox()),
          Expanded(
            flex: 6,
            child: Image.asset("assets/image/background.jpeg"),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "Controle",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "Financeiro",
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Lobster',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
              width: 300,
              child: Divider(
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: ButtonTheme(
                minWidth: 300,
                height: 50,
                child: RaisedButton(
                  splashColor: Colors.teal[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black),
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/home");
                  },
                  animationDuration: Duration(seconds: 2),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
