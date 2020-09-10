import 'package:alap/pages/calculator/calculatornextinput.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CalculatorInput extends StatefulWidget {
  CalculatorInput({Key key}) : super(key: key);

  @override
  _CalculatorInputState createState() => _CalculatorInputState();
}

class _CalculatorInputState extends State<CalculatorInput> {
  var _value = 1;
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
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                //alap logo
                Container(
                  height: 100,
                  child: Image(image: AssetImage('assets/alap_logo.png')),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //Calculator Logo
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/calculator.png'),
                      radius: 30,
                      backgroundColor: Colors.white,
                    ),
                    //heading
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.blue[900],
                      ),
                      padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                      child: Text(
                        'SC/BSA',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _heading('Sexo'),

                          //toggle button
                          ToggleSwitch(
                            minWidth: 60.0,
                            minHeight: 25,
                            initialLabelIndex: 1,
                            cornerRadius: 10.0,
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            labels: ['M', 'F'],
                            //icons: [Icons.mars, Icons.venus],
                            activeBgColors: [Colors.blue, Colors.pink],
                            onToggle: (index) {},
                          ),
                          _heading('Edad'),
                          _input(),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _heading('HTC '),
                          _input(),
                          _heading('Cebado'),
                          _input()
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _heading('Estatura'),
                          //toggle button
                          ToggleSwitch(
                            minWidth: 60.0,
                            minHeight: 25,
                            initialLabelIndex: 1,
                            cornerRadius: 10.0,
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            labels: ['Cm', 'In'],
                            //icons: [Icons.mars, Icons.venus],
                            activeBgColors: [Colors.blue, Colors.pink],
                            onToggle: (index) {},
                          ),
                          _input()
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _heading('   Peso   '),
                          //toggle button
                          ToggleSwitch(
                            minWidth: 60.0,
                            minHeight: 25,
                            initialLabelIndex: 1,
                            cornerRadius: 10.0,
                            activeFgColor: Colors.white,
                            inactiveBgColor: Colors.grey,
                            inactiveFgColor: Colors.white,
                            labels: ['Kg', 'Lb'],
                            //icons: [Icons.mars, Icons.venus],
                            activeBgColors: [Colors.blue, Colors.pink],
                            onToggle: (index) {},
                          ),
                          _input()
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      //buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _btn('Regresar', Colors.red[900], Icons.arrow_back,
                              Colors.white),
                          _button('Calcular', Colors.red[900], Colors.white),
                          _button('Compartir', Colors.red[900], Colors.white)
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      //Result butoon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            padding: EdgeInsets.fromLTRB(50, 3, 50, 3),
                            color: Colors.grey[500],
                            textColor: Colors.white,
                            child: Text(
                              'Resultados / Results',
                              style: TextStyle(fontSize: 18),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CalculatorNextInput()));
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            "assets/down.png",
            width: 100,
          ),
        ),
      ],
    );
  }
}

Widget _input() {
  return Container(
    width: 80,
    height: 23,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      border: Border.all(
        color: Colors.blue[900],
        width: 1,
      ),
      color: Colors.grey[300],
    ),
    child: TextFormField(
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
    ),
  );
}

Widget _heading(String text) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.blue[900],
    ),
    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
    child: Text(
      text,
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  );
}

Widget _btn(String text, Color color, IconData icon, Color iconcolor) {
  return Container(
    height: 25,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
    child: RaisedButton.icon(
        color: color,
        icon: Icon(
          icon,
          color: iconcolor,
        ),
        label: Text(
          text,
          style: TextStyle(color: iconcolor),
        ),
        onPressed: () {}),
  );
}

Widget _button(String text, Color color, Color textcolor) {
  return Container(
    height: 25,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(40)),
    ),
    child: RaisedButton(
        color: color,
        child: Text(
          text,
          style: TextStyle(color: textcolor),
        ),
        onPressed: () {}),
  );
}
