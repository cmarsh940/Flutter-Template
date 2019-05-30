import 'package:flutter/material.dart';
import 'auth/login.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override //Deliberatly overrides the extended widget
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Template',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}