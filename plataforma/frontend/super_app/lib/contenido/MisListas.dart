import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MisListas extends StatefulWidget {
  @override
  _MisListasState createState() => _MisListasState();
}

class _MisListasState extends State<MisListas> {
  @override

  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Container(
        child: Stack(
          children: <Widget>[

            Positioned(
              left: 280,
              bottom: 15,
              child: FloatingActionButton(
                child: Icon(Icons.add,
                ),


                onPressed: (){
                  showDialog(context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      content: Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Positioned(
                            top:-40.0,

                            child: InkResponse(
                            onTap: (){
                              Navigator.of(context).pop();
                            },

                            child: CircleAvatar(child: Icon(Icons.line_style),
                            backgroundColor: Color(0xff49C989),
                              ),

                          ),
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[

                                Padding(padding: EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(hintText: 'Nombre de mi lista'),
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  });
                }
              ),
            )
          ],
        ),
      ),




    );
  }
}

