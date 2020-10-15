import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      theme: ThemeData(primaryColor: Colors.green),
      home: FormLogin(),
    );
  }
}

class FormLogin extends StatefulWidget {
  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  TextStyle styleText = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final email = TextField(
      obscureText: false,
      style: TextStyle(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextField(
      obscureText: false,
      style: TextStyle(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final buttonLogin = Material(
      borderRadius: BorderRadius.circular(32.0),
      color: Colors.deepOrange,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("Form"),
        ),
        body: Center(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  email,
                  SizedBox(
                    height: 15.0,
                  ),
                  password,
                  SizedBox(
                    height: 30.0,
                  ),
                  buttonLogin,
                ],
              ),
            ),
          ),
        ));
  }
}
