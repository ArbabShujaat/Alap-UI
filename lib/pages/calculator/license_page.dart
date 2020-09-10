import 'package:alap/pages/calculator/calculator_input.dart';
import 'package:alap/pages/menu_page.dart';
import 'package:flutter/material.dart';

class CalculatorLicense extends StatefulWidget {
  CalculatorLicense({Key key}) : super(key: key);

  @override
  _CalculatorLicenseState createState() => _CalculatorLicenseState();
}

class _CalculatorLicenseState extends State<CalculatorLicense> {
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
            child: ListView(children: <Widget>[
              SizedBox(
                height: 20,
              ),
              //alap logo
              Container(
                height: 100,
                child: Image(image: AssetImage('assets/alap_logo.png')),
              ),
              SizedBox(
                height: 20,
              ),

              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/calculator.png'),
                    radius: 60,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 3, 50, 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.blue[900],
                    ),
                    child: Text(
                      'AVISO LEGAL',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //License NOTE
                  Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.grey[300],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      // Accept License button
                      RaisedButton(
                        color: Colors.green,
                        child: Text('ACEPTO'),
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CalculatorInput(),
                            ),
                          );
                        },
                      ),

                      //Dont accept License
                      RaisedButton(
                        color: Colors.red,
                        child: Text('NO ACEPTO'),
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Menu(),
                            ),
                          );
                        },
                      ),
                    ],
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
