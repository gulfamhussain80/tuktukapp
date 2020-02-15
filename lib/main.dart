import 'package:flutter/material.dart';
import 'package:hituktuk/ui/loginpage.dart';
import 'package:hituktuk/ui/userhomepage.dart';
void main()
{

  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Tuk Tuk",
    home:  SignInOne(),
    theme: ThemeData(
          primaryColor: Colors.indigo.shade400,
          accentColor: Colors.indigoAccent,
    ),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => UserHomePage(),
      }

  ));


}
