import 'package:controle_gastos/app/models/transacao.dart';

const DATABASE_TRANSACAO = {
  '1': const Transacao(
      id: '1',
      categoria: 'Receitas',
      tipoTransacao: 'Apartamento Novo',
      valor: '1000'),
  '2': const Transacao(
      id: '2', categoria: 'Receitas', tipoTransacao: 'Aluguel', valor: '800'),
  '3': const Transacao(
      id: '3', categoria: 'Receitas', tipoTransacao: 'Diversos', valor: '1500'),
};
