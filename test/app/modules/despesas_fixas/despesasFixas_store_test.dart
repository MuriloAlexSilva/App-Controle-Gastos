import 'package:flutter_test/flutter_test.dart';
import 'package:controle_gastos/app/modules/despesas_fixas/despesasFixas_store.dart';
 
void main() {
  late DespesasFixasStore store;

  setUpAll(() {
    store = DespesasFixasStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}