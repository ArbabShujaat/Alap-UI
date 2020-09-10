import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Certification extends StatefulWidget {
  Certification({Key key}) : super(key: key);

  @override
  _CertificationState createState() => _CertificationState();
}

class _CertificationState extends State<Certification> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

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
                  height: 20,
                ),

                //user profile picture, name, member id etc
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/profile_picture.png'),
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/certification.png'),
                                radius: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Certificado'),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Vence: Jul 2024'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            height: 25,
                            color: Colors.blue[800],
                            child: Text(
                              '  Miembro desde:  ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 148,
                            height: 25,
                            color: Colors.grey[200],
                            child: Text(
                              '    ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //user uplaod picture
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: CircleAvatar(
                          child: _image == null
                              ? Icon(
                                  Icons.camera_alt,
                                  size: 50,
                                )
                              : Image.file(_image),
                          radius: 50,
                          backgroundColor: Hexcolor("#F2F2F5"),
                        ),
                        onTap: getImage,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: <Widget>[
                          Text('Numrero de Membresia: '),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Nombre: '),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Apellido: '),
                        ],
                      ),
                    ],
                  ),
                ),
                //input feilds
                _textInput(hint: "Email", icon: Icons.email),
                _textInput(hint: "Nacionalidad", icon: Icons.flag),
                _textInput(hint: "Phone Number", icon: Icons.call),
                _uceInput(
                  hint: 'UCE',
                ),
                _textInput(hint: "Región", icon: Icons.location_city),

                //alap id button
                Padding(
                  padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.blue,
                      child: Text(
                        'ID ALAP',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {}),
                )
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
}

Widget _textInput({controller, hint, icon}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
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

Widget _uceInput({
  controller,
  hint,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
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
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        minLines: 3, //Normal textInputField will be displayed
        maxLines: 10, // when user presses enter it will adapt to it
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
        ),
      ),
    ),
  );
}
