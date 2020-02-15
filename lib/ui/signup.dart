import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _signUpKey=GlobalKey<State>();
  String _radioSelected="rider";

  @override
  void initState() {
    setState(() {
      _radioSelected="rider";
    });
    super.initState();
  }

  void handleRadio(String val)
  {
    setState(() {
      _radioSelected=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _signUpKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: (
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Enter Full Name"
                  ),
                )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: (
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter email address"
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: (
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Username",
                          hintText: "Enter Username"
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Select:",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Radio(
                  value: "rider",
                  groupValue: _radioSelected,
                  onChanged: handleRadio,
                  activeColor: Colors.purple,
                ),
                Text(
                  "Rider"
                ),
                Radio(
                  value: "driver",
                  groupValue: _radioSelected,
                  onChanged: handleRadio,
                  activeColor: Colors.green,
                ),
                Text(
                    "Driver"
                ),
              ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: (
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Password"
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: (
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Confirm Password",
                          hintText: "Re-Enter Password"
                      ),
                    )
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
