import 'package:controle_gastos/app/modules/home/home_page.dart';
import 'package:controle_gastos/app/modules/receitas/receitas_Page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ReceitasModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/receitasPage', child: (context, args) => ReceitasPage()),
    ChildRoute<String>('/', child: (context, args) => HomePage()),
  ];
}
