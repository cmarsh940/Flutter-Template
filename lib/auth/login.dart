import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
              ),
//              color: Color(0xFF7FE5D7),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: topIconBar(),
                ),
                Container(
                  height: 750,
                  child: LoginForm(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Top icon bar
  Widget topIconBar() {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  IconData(0xe5d2, fontFamily: 'MaterialIcons'),
                  color: Colors.black,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Text(
            'APP NAME!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            width: 300,
            child: getTextField('email', 'email'),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: 300,
            child: getTextField('password', 'password', true),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            width: 150,
            child: OutlineButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(fontSize: 24),
              ),
              textColor: Color(0xFF000000),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getTextField(String hintText, String key, [bool isPassword = false]) {
    return new TextField(
      key: Key(key),
      textAlign: TextAlign.center,
      obscureText: isPassword,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        fillColor: Color(0xFFD8F0F2),
        filled: true,
      ),
    );
  }
}