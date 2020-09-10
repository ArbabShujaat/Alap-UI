import 'dart:ffi';

import 'package:alap/pages/login_page.dart';
import 'package:alap/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
              children: <Widget>[
                Column(
                  children: <Widget>[
                    // alap logo
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 70, 0),
                      height: 130,
                      child: Image(image: AssetImage('assets/alap_logo.png')),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    //user profile picture and name etc
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 60,
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

                    //menu Icons, 3 icons in each row
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                menuIcon('assets/profile.png', 'Perfil',
                                    PROFILE_SCREEN, context),
                                menuIcon('assets/notification.png', 'Noticias',
                                    NOTIFICATION_SCREEN, context),
                                menuIcon('assets/calculator.png', 'Calculadora',
                                    LICENSE_SCREEN, context),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                menuIcon('assets/documents.png', 'Documentos',
                                    DOCUMENT_SCREEN, context),
                                menuIcon(
                                    'assets/certification.png',
                                    'Certificacion',
                                    CERTIFICATION_SCREEN,
                                    context),
                                menuIcon('assets/forum.png', 'Foro',
                                    FORUM_SCREEN, context),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                menuIcon('assets/youtube.png', 'Youtube', '',
                                    context),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Drawer
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: <Widget>[
                //drawer header
                UserAccountsDrawerHeader(
                  accountName: Text(
                    'Humberto A Lazo',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text('Membresia # XX-XX-XX'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile_picture.png'),
                  ),
                ),

                drawerData(
                    'assets/profile.png', 'Perfil', PROFILE_SCREEN, context),
                Divider(
                  color: Colors.grey,
                ),
                drawerData('assets/notification.png', 'Noticias',
                    NOTIFICATION_SCREEN, context),
                Divider(
                  color: Colors.grey,
                ),
                drawerData('assets/calculator.png', 'Calculadora',
                    LICENSE_SCREEN, context),
                Divider(
                  color: Colors.grey,
                ),
                drawerData('assets/documents.png', 'Documentos',
                    DOCUMENT_SCREEN, context),
                Divider(
                  color: Colors.grey,
                ),
                drawerData('assets/certification.png', 'Certificacion',
                    CERTIFICATION_SCREEN, context),
                Divider(
                  color: Colors.grey,
                ),
                drawerData('assets/forum.png', 'Foro', FORUM_SCREEN, context),
                Divider(
                  color: Colors.grey,
                ),
                drawerData('assets/youtube.png', 'Youtube', '', context),
                Divider(
                  color: Colors.grey,
                ),

                //Logout button
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    elevation: 3,
                    child: Text(
                      'Cerrar Sesion',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.blue,
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

Widget drawerData(
    String iconimage, String title, String routeName, BuildContext context) {
  return ListTile(
    leading: CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage(iconimage),
      backgroundColor: Colors.white,
    ),
    title: Text(title),
    onTap: () {
      Navigator.pushNamed(context, routeName);
    },
  );
}

Widget menuIcon(
    String icon, String name, String routeName, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, routeName);
    },
    child: Column(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage(icon),
          backgroundColor: Colors.white,
          radius: 50,
        ),
        SizedBox(
          height: 10,
        ),
        Text(name),
      ],
    ),
  );
}
