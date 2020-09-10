import 'package:alap/pages/Forum/forum.dart';
import 'package:alap/pages/Forum/forum_detail.dart';
import 'package:alap/pages/calculator/calculator_input.dart';
import 'package:alap/pages/calculator/license_page.dart';
import 'package:alap/pages/calculator/calculatornextinput.dart';
import 'package:alap/pages/calculator/results.dart';
import 'package:alap/pages/calculator/third_calculator.dart';
import 'package:alap/pages/certification.dart';
import 'package:alap/pages/documents_page.dart';
import 'package:alap/pages/menu_page.dart';
import 'package:alap/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'pages/regi_page.dart';
import 'pages/splash_page.dart';
import 'pages/login_page.dart';
import 'pages/my_profile.dart';
import 'pages/documents_page.dart';
import 'pages/notification_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'main page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => SplashPage(),
        MAIN_SCREEN: (BuildContext context) => Menu(),
        PROFILE_SCREEN: (BuildContext context) => MyProfile(),
        NOTIFICATION_SCREEN: (BuildContext context) => Notifications(),
        DOCUMENT_SCREEN: (BuildContext context) => Documents(),
        CERTIFICATION_SCREEN: (BuildContext context) => Certification(),
        FORUM_SCREEN: (BuildContext context) => ForumPage(),
        LICENSE_SCREEN: (BuildContext context) => CalculatorLicense(),
        CALCULATOR_INPUT: (BuildContext context) => CalculatorInput(),
        CALCULATOR_NEXTINPUT: (BuildContext context) => CalculatorNextInput(),
        RESULT_SCREEN: (BuildContext context) => Resultscreen(),
        FORUM_DETAIL: (BuildContext context) => ForumDetailPage(),
      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}
