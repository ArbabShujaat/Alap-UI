import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              padding: EdgeInsets.all(0),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    //alap logo
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 70, 0),
                      height: 130,
                      child: Image(image: AssetImage('assets/alap_logo.png')),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //user profile picture
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/profile_picture.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'Humberto A Lazo',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                'Membresia # XX-XX-XX',
                                style: TextStyle(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //user information
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            _myProfileData(
                                //icon: Icons.person,
                                heading: "Nombre:",
                                data: ""),
                            _myProfileData(
                                //icon: Icons.person_add,
                                heading: "Apellido:",
                                data: ""),
                            _myProfileData(
                                //icon: Icons.email,
                                heading: "E-Mail:",
                                data: ""),
                            _myProfileData(
                                //icon: Icons.phone,
                                heading: "Telefono:",
                                data: ""),
                            _myProfileData(
                                //icon: Icons.flag,
                                heading: "Pais:",
                                data: ""),
                            _myProfileData(
                                //icon: Icons.add_location,
                                heading: "Region:",
                                data: ""),
                            _myProfileData(
                                //icon: Icons.check,
                                heading: "Certificacion:",
                                data: ""),
                            _myProfileData(heading: "Estatus:", data: ""),
                          ],
                        ),
                      ),
                    ),

                    // percentage indicator shwo the progress of information completion
                    CircularPercentIndicator(
                      progressColor: Colors.green,
                      animation: true,
                      percent: 0.7,
                      radius: 130,
                      lineWidth: 15,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text(
                        '70%',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
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

Widget _myProfileData({IconData icon, heading, data}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                heading,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 20.0),
              Text(data)
            ],
          ),
        ],
      ),
    ),
  );
}
