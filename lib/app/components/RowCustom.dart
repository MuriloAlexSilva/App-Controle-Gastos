import 'package:flutter/material.dart';

class RowCustom extends StatelessWidget {
  final String texto1;
  final String texto2;
  final String rotaCustomizada1;
  final String rotaCustomizada2;
  final IconData icone1;
  final IconData icone2;

  const RowCustom(
      {Key key,
      this.texto1,
      this.texto2,
      this.icone1,
      this.icone2,
      this.rotaCustomizada1,
      this.rotaCustomizada2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 20, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Material(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("$rotaCustomizada1");
              },
              child: Container(
                width: 170,
                height: 200,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        this.icone1,
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          texto1,
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(),
          Material(
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("$rotaCustomizada2");
              },
              child: Container(
                width: 170,
                height: 200,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        this.icone2,
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          texto2,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
