import 'package:controle_gastos/app/database/dao/transacao_dao.dart';
import 'package:flutter/material.dart';

class DeletePage extends StatefulWidget {
  @override
  _DeletePageState createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  final TextEditingController _idnumber = TextEditingController();
  final TransacaoDao _dao = TransacaoDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("New Contact"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _idnumber, //controler do account
                decoration: InputDecoration(labelText: "Id Number"),
                style: TextStyle(fontSize: 20),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width:
                    double.maxFinite, //Para ocupar o maximo da largura da tela
                child: RaisedButton(
                  onPressed: () {
                    final int idNumber = int.tryParse(_idnumber.text);
                    _dao
                        .delete(idNumber)
                        .then((id) => Navigator.of(context).pushNamed('/home'));
                  },
                  child: Text(
                    "Delete",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
