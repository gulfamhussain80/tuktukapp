import 'package:flutter/material.dart';

class UserHomePage extends StatefulWidget {
  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
                color: Color(0xffe59f8a),
              ),
              Text(
                "Tuk Tuk",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                width: 50,
              )
            ],
          ),
        ),
          SizedBox(height: 15,),

      ],
    )

//      appBar: AppBar(
//        flexibleSpace: Container(
//          decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  begin: Alignment.centerLeft,
//                  end: Alignment.centerRight,
//                  colors: <Color>[Color(0xff563a6b), Color(0xffe59f8a)])),
//        ),
//      ),
        );
  }
}
