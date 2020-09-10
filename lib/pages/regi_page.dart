import 'dart:io';

import 'package:flutter/material.dart';
import 'package:alap/widgets/btn_widget.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'login_page.dart';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  //image picker
  File _image;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  int _value = 1;
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
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(bottom: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),

                //alap Logo
                Container(
                  height: 130,
                  child: Image(image: AssetImage('assets/alap_logo.png')),
                ),
                SizedBox(
                  height: 30,
                ),

                //Sign up heading
                Container(
                  child: Center(
                    child: Text(
                      'Registrate Ahora',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue[500],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //pick image
                InkWell(
                  child: CircleAvatar(
                    child: _image == null
                        ? Icon(
                            Icons.camera_alt,
                            size: 50,
                          )
                        : Image.file(_image),
                    radius: 60,
                    backgroundColor: Hexcolor("#F2F2F5"),
                  ),
                  onTap: getImage,
                ),

                //sign up textfields
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      _textInput(hint: "Nombre", icon: Icons.person),
                      _textInput(hint: "Apellido", icon: Icons.person_outline),
                      _textInput(
                          hint: "Lugar de Trabajo", icon: Icons.add_location),
                      _textInput(hint: "Email", icon: Icons.email),
                      _textInput(hint: "Phone Number", icon: Icons.call),
                      _textInput(hint: "Nacionalidad", icon: Icons.flag),
                      _textInput(hint: "Región", icon: Icons.location_city),
                      SizedBox(
                        height: 30,
                      ),

                      // Sign up button
                      ButtonWidget(
                        btnText: "Completo",
                        onClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                      ),
                      SizedBox(
                        height: 10,
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
      ],
    );
  }

  Widget _textInput({controller, hint, icon}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Hexcolor("#F2F2F5"),
            // color:Colors.g
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  offset: Offset(6, 2),
                  blurRadius: 6.0,
                  spreadRadius: 3.0),
              BoxShadow(
                  color: Color.fromRGBO(255, 255, 255, 0.9),
                  offset: Offset(-6, -2),
                  blurRadius: 6.0,
                  spreadRadius: 3.0)
            ]),
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Icon(icon),
          ),
        ),
      ),
    );
  }
}
