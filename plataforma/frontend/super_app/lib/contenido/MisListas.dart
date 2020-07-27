import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item {
  const Item(this.name);
  final String name;
}

class MisListas extends StatefulWidget {
  @override
  _MisListasState createState() => _MisListasState();
}

class _MisListasState extends State<MisListas> {
  Item selectedUser;
  List<Item> items = <Item>[
    const Item('Carnes'),
    const Item('Lacteos'),
    const Item('Mariscos'),
    const Item('Bebidas'),
    const Item('Varios'),
  ];
  @override
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2AA467),
        title: Text('Listas'),
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Stack(
          children: <Widget>[
            Center(
              child: FlatButton(
                  color: Colors.greenAccent,
                  child: Text('Nueva Lista'),
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
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          /*DropdownButton<Item>(
                                            hint: Text("Seleciona Categoria"),
                                            value: selectedUser,
                                            onChanged: (Item Value) {
                                              setState(() {
                                                selectedUser = Value;
                                              });
                                            },
                                            items: Item.map((Item user) {
                                              return DropdownMenuItem<Item>(
                                                value: user,
                                              );
                                            }).toList(),
                                          ),*/
                                          Image.network(
                                            'http://aguiarbuenosaires.com/wp-content/uploads/2016/05/Parrilla-com-bife-de-chorizo-tapa-de-cuadril-e-entrecot.jpg',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ],
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
                                ),
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
