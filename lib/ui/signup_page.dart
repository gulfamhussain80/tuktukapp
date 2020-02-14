import 'package:flutter/material.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Sign Up"),),
      body: Center(
        child:
          Text("This is Signup Page !",
          style: new TextStyle(fontSize: 20),)
      )
    );
  }

}