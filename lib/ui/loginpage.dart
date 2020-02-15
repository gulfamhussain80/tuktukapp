import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hituktuk/ui/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _loginEmailController = new TextEditingController();
  TextEditingController _loginPasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 100.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _loginEmailController,
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Enter the Email Address"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _loginPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password", hintText: "Enter the Password"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                          onPressed: (){
                            var router= new MaterialPageRoute(builder: (BuildContext context){
                              return new SignUp();
                            });
                            Navigator.of(context).push(router);
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                      FlatButton(
                          onPressed: () => debugPrint("Login!"),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }


}
