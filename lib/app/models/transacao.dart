class Transacao {
  final String id;
  final String categoria;
  final String tipoTransacao;
  final double valor;
  final String mes;

  Transacao(
      {this.id, this.categoria, this.tipoTransacao, this.valor, this.mes});

  @override
  String toString() {
    return 'Transacao{id: $id, categoria: $categoria, tipoTransacao: $tipoTransacao, valor: $valor, mes: $mes}';
  }
}
