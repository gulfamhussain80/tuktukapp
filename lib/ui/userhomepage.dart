import 'package:flutter/material.dart';

class UserHomePage extends StatefulWidget {
  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        body: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: ListView(
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
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                            style: TextStyle(fontSize: 60, color: Colors.black),
                            children: [
                              TextSpan(
                                text: "Hi,",
                              ),
                              TextSpan(
                                  text: ' Uzair',
                                  style: TextStyle(
                                      fontSize: 45, color: Colors.black)),
                            ]),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 8, top: 10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          style: TextStyle(fontSize: 20),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              icon: Icon(Icons.not_listed_location),
                              hintText: "Where to?",
                              focusColor: Color(0xffe59f8a),
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(fontSize: 20)),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter location';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          style: TextStyle(fontSize: 20),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              icon: Icon(Icons.people),
                              hintText: "People?",
                              focusColor: Color(0xffe59f8a),
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(fontSize: 20)),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter number of people';
                            }
                            return null;
                          },
                        ),SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          style: TextStyle(fontSize: 20),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              icon: Icon(Icons.attach_money),
                              hintText: "Fare?",
                              focusColor: Color(0xffe59f8a),
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(fontSize: 20)),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter fare amount';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  height: 300.0,
                                  width: 300.0,
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: FittedBox(
                                    child: FloatingActionButton(
                                        child: Icon(Icons.drive_eta),
                                        backgroundColor: Color(0xffe59f8a),
                                        onPressed: () {
                                          if (_formKey.currentState
                                              .validate()) {
                                            final snackBar = SnackBar(
                                                content: Text('Lets go'));
                                            _scaffoldKey.currentState
                                                .showSnackBar(snackBar);
                                          }
                                        }),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
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
