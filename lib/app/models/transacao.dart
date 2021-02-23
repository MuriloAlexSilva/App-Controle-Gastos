class Transacao {
  final String titulo;
  final String mes;
  final String descricao;
  final double valor;

  Transacao({this.titulo, this.mes, this.descricao, this.valor});

  @override
  String toString() {
    return 'Transacao(titulo: $titulo, mes: $mes, descricao: $descricao, valor: $valor)';
  }
}
