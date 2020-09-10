import 'package:alap/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ForumPage extends StatefulWidget {
  ForumPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ForumPageState createState() => new _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  /// Top Icons
  var topCategoyIcons = new Container(
    alignment: Alignment.center,
    // decoration: new BoxDecoration(
    //     gradient: new LinearGradient(
    //   colors: [
    //     AppColorsTheme.myTheme.titleBarGradientStartColor,
    //     AppColorsTheme.myTheme.titleBarGradientEndColor
    //   ],
    //   begin: const FractionalOffset(0.0, 0.0),
    //   end: const FractionalOffset(0.0, 1.0),
    //   stops: [0.0, 1.0],
    //   tileMode: TileMode.clamp,
    // )),
    child: new Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 0.0,
      ),
      decoration: new BoxDecoration(
        color: Colors.blue,
        // border: new Border.all(color: Colors.black, width: 1.0),
        borderRadius: new BorderRadius.only(
          topLeft: new Radius.circular(30.0),
          topRight: new Radius.circular(30.0),
        ),
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new CategoryIcon(Icons.landscape, "Nature", true),
          new CategoryIcon(Icons.headset, "Music", false),
          new CategoryIcon(Icons.movie, "Movies", false),
          new CategoryIcon(Icons.place, "Places", false),
        ],
      ),
    ),
  );

  var categoryMetric = new Container(
    padding: const EdgeInsets.all(5.0),
    margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
    decoration: new BoxDecoration(
      gradient: new LinearGradient(
        colors: [Colors.blue, Colors.blue],
        begin: const FractionalOffset(0.0, 0.5),
        end: const FractionalOffset(0.0, 1.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp,
      ),
      // border: new Border.all(color: Colors.black, width: 1.0),
      borderRadius: new BorderRadius.only(
        bottomLeft: new Radius.circular(30.0),
        bottomRight: new Radius.circular(30.0),
      ),
    ),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new CategoryIcon(Icons.cake, "Food", false),
        new CategoryIcon(Icons.book, "Book", false),
        new CategoryIcon(Icons.games, "Games", false),
        new CategoryIcon(Icons.history, "History", false),
      ],
    ),
  );

  static final listItemsData = [
    new ListEntry("Forum 1", "test", "description 1", 54, 2, true),
    new ListEntry("Forum 2", "test", "description 2", 154, 3, false),
    new ListEntry("Forum 3", "test", "description 3", 971, 0, false),
    new ListEntry("Forum 4", "test", "description 4", 124, 2, true),
    new ListEntry("Forum 5", "test", "description 5", 412, 5, true),
    new ListEntry("Forum 6", "test", "description 6", 12, 1, true),
  ];
  var listView = new ListView.builder(
    itemBuilder: (BuildContext context, int index) =>
        new EntryItem(listItemsData[index]),
    itemCount: listItemsData.length,
    shrinkWrap: true,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        iconTheme: IconThemeData(color: Colors.red),
      ),
      body: ListView(
        children: <Widget>[
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
                  backgroundImage: AssetImage('assets/forum.png'),
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Foro',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          new Container(
            height: MediaQuery.of(context).size.height / 1.7,
            child: listView,
          ),
        ],
      ),
    );
  }

  void _onSearchPressed() {
    Navigator.pop(context);
  }
}

class ListEntry {
  final String title;
  final String icon;
  final String description;
  final int views;
  final int responses;
  final bool answered;

  ListEntry(this.title, this.icon, this.description, this.views, this.responses,
      this.answered);
}

class CategoryIcon extends StatelessWidget {
  const CategoryIcon(this.icon, this.iconText, this.selected);

  final String iconText;
  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new IconButton(
            icon: new Icon(icon),
            onPressed: _onSearchPressed,
            color: selected == true ? Colors.red : Colors.black,
          ),
          new Text(iconText)
        ],
      ),
    );
  }

  static void _onSearchPressed() {}
}

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final ListEntry entry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Container(
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
        padding: const EdgeInsets.all(3.0),
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
        child: new ListTile(
          title: new Text(entry.title),
          subtitle: new Text(entry.description),
          // leading: new Icon(
          //   Icons.assignment,
          //   color: Colors.blue,
          // ),
          trailing: Container(
            width: 100,
            height: 100,
            child: new Row(
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                Column(
                  children: <Widget>[Icon(Icons.remove_red_eye), Text("3")],
                ),
                Spacer(),
                Column(
                  children: <Widget>[Icon(Icons.message), Text("4")],
                ),
              ],
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, FORUM_DETAIL);
          },
        ),
      ),
    );
  }
}
