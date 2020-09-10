import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  Notifications({Key key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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

                //notification heading and icon
                Padding(
                  padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/notification.png'),
                        radius: 30,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Noticias',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),

                //List of Notifications
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Icon(
                            Icons.notifications,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Notification',
                            ),
                          ),
                        ],
                      ),
                      subtitle: notification('this is first notification')),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Icon(
                            Icons.notifications,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Notification',
                            ),
                          ),
                        ],
                      ),
                      subtitle: notification('this is first notification')),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      title: Row(
                        children: <Widget>[
                          Icon(
                            Icons.notifications,
                            color: Colors.blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Notification',
                            ),
                          ),
                        ],
                      ),
                      subtitle: notification('this is first notification')),
                ),
                Divider(),
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

Widget notification(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 17,
    ),
  );
}
