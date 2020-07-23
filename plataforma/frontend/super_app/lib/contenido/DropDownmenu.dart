import 'package:flutter/material.dart';
import 'package:superapp/contenido/dropdown_formfield.dart';

class Dropdonwmenu extends StatefulWidget {
  const Dropdonwmenu({Key key}) : super(key: key);

  @override
  _Dropdonwmenu createState() => _Dropdonwmenu();
}

class _Dropdonwmenu extends State<Dropdonwmenu> {
  String _myActivity;
  String _myActivityResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 45),
        child: DropDownFormField(
          hintText: 'Elige Uno',
          value: _myActivity,
          onSaved: (value) {
            setState(() {
              _myActivity = value;
            });
          },
          onChanged: (value) {
            setState(() {
              _myActivity = value;
            });
          },
          dataSource: [
            {
              "display": "Bravo",
              "value": "Bravo",
            },
            {
              "display": "Sirena",
              "value": "La Sirena",
            },
            {
              "display": "Jumbo",
              "value": "Jumbo",
            },
            {
              "display": "Nacional",
              "value": "El Nacional",
            },
            {
              "display": "Plaza Lama",
              "value": "Plaza Lama",
            },
            {
              "display": "La Cadena",
              "value": "Baseball Practice",
            },
            {
              "display": "Cumbre",
              "value": "Football Practice",
            },
          ],
          textField: 'display',
          valueField: 'value',
        ),
      ),
    );
  }
}
