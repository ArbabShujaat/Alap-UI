import 'package:flutter/material.dart';

class Documents extends StatefulWidget {
  Documents({Key key}) : super(key: key);

  @override
  _DocumentsState createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
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
                  padding: EdgeInsets.fromLTRB(0, 0, 150, 0),
                  height: 100,
                  child: Image(image: AssetImage('assets/alap_logo.png')),
                ),
                SizedBox(
                  height: 30,
                ),

                //documents heading and icon
                Padding(
                  padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/documents.png'),
                        radius: 30,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Documentos',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                //dropdown button for choosing documents
                Center(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                ),
                                Text(
                                  'Carga tus documentos',
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: selectdocuments(
                              icon: Icons.picture_as_pdf,
                              docName: 'Documento de Identidad',
                            ),
                            value: 2,
                          ),
                          DropdownMenuItem(
                              child: selectdocuments(
                                icon: Icons.school,
                                docName: 'Titulo Universitario',
                              ),
                              value: 3),
                          DropdownMenuItem(
                              child: selectdocuments(
                                icon: Icons.work,
                                docName: 'Constancia Laboral',
                              ),
                              value: 4),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                ),

                //Display List of all files
                Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        docs(
                          icon: Icons.picture_as_pdf,
                          documentName: 'Documento de Identidad',
                          icon2: Icons.check_circle,
                          iconcolor: Colors.green,
                        ),
                        docs(
                          icon: Icons.school,
                          documentName: 'Titulo Universitario',
                          icon2: Icons.cancel,
                          iconcolor: Colors.red,
                        ),
                        docs(
                          icon: Icons.work,
                          documentName: 'Constancia Laboral',
                          icon2: Icons.check_circle,
                          iconcolor: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 50,
                ),

                //reruirment note
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                    child: Container(
                      width: 300,
                      height: 200,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Requerimientos',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              'Con la finalidad de autentificar su Identidad y confirmar sus capacidades Profisionales necesitamos que nos envielos siguients documentos')
                        ],
                      ),
                    ),
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

Widget docs({IconData icon, documentName, IconData icon2, Color iconcolor}) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      height: 20,
      margin: EdgeInsets.only(top: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                icon,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                documentName,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                icon2,
                color: iconcolor,
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget selectdocuments({IconData icon, docName}) {
  return Row(
    children: <Widget>[
      Icon(
        icon,
        color: Colors.blue,
      ),
      SizedBox(
        width: 10,
      ),
      Text(docName)
    ],
  );
}
