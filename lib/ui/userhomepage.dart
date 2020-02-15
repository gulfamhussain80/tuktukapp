import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

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
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                      color: Color(0xffe59f8a),
                      iconSize: 30,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: GradientText("Tuk Tuk",
                            gradient: LinearGradient(colors: [
                              Color(0xffe59f8a),
                              Colors.deepOrange.shade300,
                              Colors.pink.shade300,
                            ]),
                            style: TextStyle(
                                fontSize: 45, fontWeight: FontWeight.w800),
                            textAlign: TextAlign.center)),
                    SizedBox(
                      width: 50,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Text(
                        "Book a ride now !",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      )),
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
                        ),
                        SizedBox(
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
                          height: 30,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  height: 220.0,
                                  width: 220.0,
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
