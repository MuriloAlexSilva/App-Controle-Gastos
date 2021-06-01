import 'package:controle_gastos/app/modules/home/home_page.dart';
import 'package:controle_gastos/app/modules/receitas/receitas_Page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ReceitasModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
//Para receber os dados temos que colocar a tipagem de String
    ChildRoute<String>('/', child: (context, args) => HomePage()),
    //Para enviar os dados para a contactPage e editar o usuario do index em questão
    ChildRoute('/receitasPage', //tipar a childRoute <Contact>
        child: (context, args) => ReceitasPage(
            // contact: args.data,
            )),
  ];
}
