import 'package:flutter/material.dart';
import 'package:hituktuk/ui/loginpage.dart';
import 'package:hituktuk/ui/userhomepage.dart';
void main()
{

  runApp(new MaterialApp(
    title: "Tuk Tuk",
    home:  SignInOne(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => UserHomePage(),

      }

  ));


}
