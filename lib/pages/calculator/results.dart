import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

class Resultscreen extends StatefulWidget {
  Resultscreen({Key key}) : super(key: key);

  @override
  _ResultscreenState createState() => _ResultscreenState();
}

class _ResultscreenState extends State<Resultscreen> {
  int _value = 1;

  //radio button
  String _singleValue = "Text alignment right";
  String _verticalGroupValue = "Pending";
  List<String> _status = [
    "Adulto",
    "Pediatrico",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.grey[50],
            iconTheme: IconThemeData(color: Colors.red),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(padding: EdgeInsets.all(20), children: <Widget>[
              SizedBox(
                height: 10,
              ),
              //alap logo
              Container(
                //padding: EdgeInsets.fromLTRB(0, 0, 150, 0),
                height: 100,
                child: Image(image: AssetImage('assets/alap_logo.png')),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  _heading('Cardioplegia del Nido'),
                  SizedBox(
                    height: 10,
                  ),
                  _heading('Dosis de Inducion'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('         temperatura'),
                      _contstantdata('             4C - 5C')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('               Dosis'),
                      _resultdata('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata(' Tiempo de Proteccion'),
                      _contstantdata('      90 - 120 Minutos')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _heading('Dosis de Mantenimiento'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('         temperatura'),
                      _contstantdata('             4C - 5C')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('               Dosis'),
                      _resultdata('')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 3, 30, 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.grey[500],
                    ),
                    child: Text(
                        '1:4 ( 1 parte de Sangre 4 Partes de Cristaloides'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 5, 50, 0),
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        color: Colors.red[700]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Composition',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Text(
                          'Adult',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Text(
                          'Pediatric',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdatasmall('      plasmalyte \'A\''),
                      _contstantdatasmall('             100ml'),
                      _contstantdatasmall('             500ml'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdatasmall('    NaHCO3(8.4%)'),
                      _contstantdatasmall('    13 ml (13mEg) '),
                      _contstantdatasmall('   6.5 ml (6.5 mEq) '),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdatasmall('     KCI - 2 mEq/ml'),
                      _contstantdatasmall('    13 ml (26 mEg) '),
                      _contstantdatasmall('   6.5 ml (13 mEq) '),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdatasmall('      MgS04 (25%)'),
                      _contstantdatasmall('          8 ml (2g) '),
                      _contstantdatasmall('          4 ml (1g) '),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdatasmall('     Lidocaine (2%)  '),
                      _contstantdatasmall('               6.5 '),
                      _contstantdatasmall('             3.3 ml'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdatasmall('       Manitol(20%)'),
                      _contstantdatasmall('              16 ml'),
                      _contstantdatasmall('             8 ml'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _heading('Saint Thomas'),
                  SizedBox(
                    height: 10,
                  ),
                  _heading('Dosis de Induccion'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('         temperatura'),
                      _contstantdata('                     4C')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('               Dosis'),
                      _resultdata('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata(' Tiempo de Proteccion'),
                      _contstantdata('                 20 Min')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _heading('Dosis de Mentenimiento'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('         temperatura'),
                      _contstantdata('                4C ')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('               Dosis'),
                      _resultdata('')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(100, 4, 100, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.red[800],
                    ),
                    child: Text(
                      'Composicion',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('                      Na +'),
                      _contstantdatasmall('        110mmol/l')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('                      K +'),
                      _contstantdatasmall('         16mmol/l')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('                      Mg2 +'),
                      _contstantdatasmall('         16mmol/l')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('                      Ca2 +'),
                      _contstantdatasmall('         1.2mmol/l')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('                    NaHCO3'),
                      _contstantdatasmall('          10mmol/l')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _heading('Canulas'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(100, 4, 100, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.red[800],
                    ),
                    child: Text(
                      'Recomendacion',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _contstantdatabig(
                      '                           CANULAS ARTERIALES'),
                  SizedBox(
                    height: 10,
                  ),
                  _resultdatabig(''),
                  SizedBox(
                    height: 10,
                  ),
                  _contstantdatabig(
                      '                           CANULAS VENOSAS'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('   Vena Cava Superior'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('   Vena Cava Inferior'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata(' Doble Estadio/(two stage)'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _contstantdatabig(
                      '                           CANULAS FEMORAL'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('          Femoral Arterial'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('          Femoral Venosa'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _heading('Surgerencia de Tubos'),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(100, 4, 100, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.red[800],
                    ),
                    child: Text(
                      'Recomendacion',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('               Cabezal'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('        Tuberia Arterial'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('         Tuberia Venosa'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('                Rooillo'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _heading('Calculos de Drogas'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('       Dosis de Heparina'),
                      DropdownButton(
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Text('3mg/kg'),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text('4mg/kg'),
                              value: 2,
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                      _contstantdatasmall('')
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(100, 4, 100, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.grey[500],
                    ),
                    child: Text(
                      'Dosis de Protamina',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata(' (Heparina Dosis*1.0)/100'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata(' (Heparina Dosis*1.5)/100'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('     Bicarbonato de Sodio'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('       Gluconato de Calcio'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdata('          Cloruro de Potasio'),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RadioGroup<String>.builder(
                        direction: Axis.horizontal,
                        groupValue: _verticalGroupValue,
                        onChanged: (value) => setState(() {
                          _verticalGroupValue = value;
                        }),
                        items: _status,
                        itemBuilder: (item) => RadioButtonBuilder(
                          item,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _contstantdatasmall('            Manitol'),
                      DropdownButton(
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Text('Drop Down'),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text('    18 %'),
                              value: 2,
                            ),
                            DropdownMenuItem(
                              child: Text('    20 %'),
                              value: 3,
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                      _contstantdatasmall('')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _heading('Oxigenadores'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Image.asset(
            "assets/up.png",
            width: 100,
          ),
        ),
      ],
    );
  }
}

Widget _heading(String text) {
  return Container(
    padding: EdgeInsets.fromLTRB(50, 3, 50, 3),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.blue[900],
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  );
}

Widget _contstantdata(String text) {
  return Container(
    //padding: EdgeInsets.fromLTRB(40, 3, 40, 3),
    width: 170,
    height: 20,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.grey[300],
      border: Border.all(
        color: Colors.blue[900],
        width: 1,
      ),
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 14, color: Colors.black),
    ),
  );
}

Widget _contstantdatasmall(String text) {
  return Container(
    padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
    width: 110,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.grey[300],
      border: Border.all(
        color: Colors.blue[900],
        width: 1,
      ),
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 12, color: Colors.black),
    ),
  );
}

Widget _contstantdatabig(String text) {
  return Container(
    padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
    width: 280,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.grey[300],
      border: Border.all(
        color: Colors.blue[900],
        width: 1,
      ),
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 12, color: Colors.black),
    ),
  );
}

Widget _resultdata(String text) {
  return Container(
    width: 170,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.grey[300],
      border: Border.all(
        color: Colors.blue[900],
        width: 1,
      ),
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 16, color: Colors.black),
    ),
  );
}

Widget _resultdatabig(String text) {
  return Container(
    padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
    width: 280,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.grey[300],
      border: Border.all(
        color: Colors.blue[900],
        width: 1,
      ),
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 12, color: Colors.black),
    ),
  );
}
