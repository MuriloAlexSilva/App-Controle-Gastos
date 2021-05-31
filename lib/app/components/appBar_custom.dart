import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBarCustom({BuildContext context, String title}) {
  return AppBar(
    backgroundColor: Colors.indigo[400],
    title: Text(title),
    centerTitle: true,
  );
}
