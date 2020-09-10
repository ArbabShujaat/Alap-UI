import 'package:alap/pages/calculator/results.dart';
import 'package:flutter/material.dart';

class CalculatorNextInput extends StatefulWidget {
  CalculatorNextInput({Key key}) : super(key: key);

  @override
  _CalculatorNextInputState createState() => _CalculatorNextInputState();
}

class _CalculatorNextInputState extends State<CalculatorNextInput> {
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;
  bool val5 = false;
  bool val6 = false;
  bool val7 = false;
  bool val8 = false;
  bool val9 = false;
  bool val10 = false;
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
                  //padding: EdgeInsets.fromLTRB(0, 0, 150, 0),
                  height: 100,
                  child: Image(image: AssetImage('assets/alap_logo.png')),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _heading('SC/BSA'),
                          _displayresult(''),
                          _heading('EBV'),
                          _displayresult(''),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _heading('CPB HCT'),
                          _displayresult(''),
                          _heading('BMI'),
                          _displayresult(''),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(50, 5, 50, 0),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            color: Colors.grey),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Indice Cardiaco / Gasto Cardiaco',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            Text(
                              'Lt/min/m2  /  Lt/min',
                              style: TextStyle(fontSize: 15, color: Colors.red),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _heading('0.5'),
                                Checkbox(
                                  value: val1,
                                  onChanged: (bool value) {
                                    setState(() {
                                      val1 = value;
                                    });
                                  },
                                ),
                                _displayresult(''),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _heading('1.0'),
                                Checkbox(
                                  value: val2,
                                  onChanged: (bool value) {
                                    setState(() {
                                      val2 = value;
                                    });
                                  },
                                ),
                                _displayresult(''),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _heading('1.5'),
                                Checkbox(
                                  value: val3,
                                  onChanged: (bool value) {
                                    setState(() {
                                      val3 = value;
                                    });
                                  },
                                ),
                                _displayresult(''),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _heading('1.8'),
                                Checkbox(
                                  value: val4,
                                  onChanged: (bool value) {
                                    setState(() {
                                      val4 = value;
                                    });
                                  },
                                ),
                                _displayresult(''),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _heading('2.0'),
                                Checkbox(
                                  value: val5,
                                  onChanged: (bool value) {
                                    setState(() {
                                      val5 = value;
                                    });
                                  },
                                ),
                                _displayresult(''),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _heading('2.2'),
                                Checkbox(
                                  value: val6,
                                  onChanged: (bool value) {
                                    setState(() {
                                      val6 = value;
                                    });
                                  },
                                ),
                                _displayresult(''),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _heading('2.4'),
                                Checkbox(
                                  value: val7,
                                  onChanged: (bool value) {
                                    setState(() {
                                      val7 = value;
                                    });
                                  },
                                ),
                                _displayresult(''),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _heading('2.6'),
                                Checkbox(
                                  value: val8,
                                  onChanged: (bool value) {
                                    setState(() {
                                      val8 = value;
                                    });
                                  },
                                ),
                                _displayresult(''),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _heading('2.8'),
                                Checkbox(
                                  value: val9,
                                  onChanged: (bool value) {
                                    setState(() {
                                      val9 = value;
                                    });
                                  },
                                ),
                                _displayresult(''),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _heading('3.0'),
                                Checkbox(
                                  value: val10,
                                  onChanged: (bool value) {
                                    setState(() {
                                      val10 = value;
                                    });
                                  },
                                ),
                                _displayresult(''),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RaisedButton(
                              color: Colors.blue[900],
                              child: Text(
                                'continue',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Resultscreen()));
                              },
                            )
                          ],
                        ),
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
            width: 80,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            "assets/down.png",
            width: 80,
          ),
        ),
      ],
    );
  }
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

Widget _displayresult(String text) {
  return Container(
    width: 60,
    height: 23,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.grey[300],
      border: Border.all(
        color: Colors.blue[900],
        width: 1,
      ),
    ),
    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
    child: Text(
      text,
      style: TextStyle(fontSize: 20, color: Colors.black),
    ),
  );
}
