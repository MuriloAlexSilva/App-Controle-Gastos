import 'package:controle_gastos/components/RowCustom.dart';
import 'package:flutter/material.dart';

class ColumnCustom extends StatefulWidget {
  // final String descricao1;
  // final String descricao2;
  // final String descricao3;
  // final String descricao4;
  // final String descricao5;
  // final String descricao6;
  // final String descricao7;
  // final double valor1;
  // final double valor2;
  // final double valor3;
  // final double valor4;
  // final double valor5;
  // final double valor6;
  // final double valor7;

  // const ColumnCustom(
  //     {Key key,
  //     this.descricao1,
  //     this.descricao2,
  //     this.descricao3,
  //     this.descricao4,
  //     this.descricao5,
  //     this.descricao6,
  //     this.descricao7,
  //     this.valor1,
  //     this.valor2,
  //     this.valor3,
  //     this.valor4,
  //     this.valor5,
  //     this.valor6,
  //     this.valor7})
  //     : super(key: key);

  @override
  _ColumnCustomState createState() => _ColumnCustomState();
}

class _ColumnCustomState extends State<ColumnCustom> {
  final String descricao1;
  final String descricao2;
  final String descricao3;
  final String descricao4;
  final String descricao5;
  final String descricao6;
  final String descricao7;
  final double valor1;
  final double valor2;
  final double valor3;
  final double valor4;
  final double valor5;
  final double valor6;
  final double valor7;

  _ColumnCustomState(
      {this.descricao1,
      this.descricao2,
      this.descricao3,
      this.descricao4,
      this.descricao5,
      this.descricao6,
      this.descricao7,
      this.valor1,
      this.valor2,
      this.valor3,
      this.valor4,
      this.valor5,
      this.valor6,
      this.valor7});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowCustom("amanha", 10),
        RowCustom(descricao: widget.descricao2 ?? '', valor: widget.valor2),
        RowCustom(descricao: widget.descricao3 ?? '', valor: widget.valor3),
        RowCustom(descricao: widget.descricao4 ?? '', valor: widget.valor4),
        RowCustom(descricao: widget.descricao5 ?? '', valor: widget.valor5),
        RowCustom(descricao: widget.descricao6 ?? '', valor: widget.valor6),
        RowCustom(descricao: widget.descricao7 ?? '', valor: widget.valor7),
      ],
    );
  }
}
