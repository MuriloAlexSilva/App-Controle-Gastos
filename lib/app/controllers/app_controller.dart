import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    /*O ! seria para fazer o contrario do boleano, trocando de false para true e vice-versa
    seria para utilizar o switch
    */

    notifyListeners(); //Seria para notificar quem está instanciando
  }
}
