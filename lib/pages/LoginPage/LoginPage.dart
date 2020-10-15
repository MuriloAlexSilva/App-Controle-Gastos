import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.teal[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset("assets/image/background.jpeg"),
          ),
          Text(
            "Controle",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Text(
            "Financeiro",
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Lobster',
            ),
          ),
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
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
          )
        ],
      ),
    );
  }
}
