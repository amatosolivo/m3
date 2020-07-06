import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuperMercados extends StatefulWidget {
  @override
  _SuperMercadosState createState() => _SuperMercadosState();
}

class _SuperMercadosState extends State<SuperMercados> {
  @override
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Stack(
          children: <Widget>[
            Center(
              child: FlatButton(
                  color: Colors.greenAccent,
                  child: Text('SuperMercados'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Stack(
                              overflow: Overflow.visible,
                              children: <Widget>[
                                Positioned(
                                  top: -40.0,
                                  child: InkResponse(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: CircleAvatar(
                                      child: Icon(Icons.line_style),
                                      backgroundColor: Color(0xff49C989),
                                    ),
                                  ),
                                ),
                                Form(
                                  key: _formKey,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              hintText: 'Nombre de mi Lista'),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          InputChip(
                                            label: Text('Agregar'),
                                            labelStyle:
                                                TextStyle(color: Colors.white),
                                            backgroundColor: Colors.blueGrey,
                                            selectedColor: Colors.blue,
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          InputChip(
                                            label: Text('Cancelar'),
                                            labelStyle:
                                                TextStyle(color: Colors.white),
                                            backgroundColor: Colors.blueGrey,
                                            selectedColor: Colors.blue,
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
