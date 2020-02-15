import 'package:flutter/material.dart';
import 'package:hituktuk/ui/loginpage.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _signUpKey=GlobalKey<FormState>();
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
      debugPrint(_radioSelected);
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
                  validator: (value){
                    if(value.trim().isEmpty)
                      {
                        return 'Name is required';
                      }
                    else
                      {
                        return null;
                      }
                  },
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
                      validator: (value){
                        if(value.trim().isEmpty)
                        {
                          return 'Email Address is required';
                        }
                        else
                        {
                          return null;
                        }
                      },
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
                      validator: (value){
                        if(value.trim().isEmpty)
                        {
                          return 'Username is required';
                        }
                        else
                        {
                          return null;
                        }
                      },
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
                      validator: (value){
                        if(value.trim().isEmpty)
                        {
                          return 'Password is required';
                        }
                        else
                        {
                          return null;
                        }
                      },
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
                      validator: (value){
                        if(value.trim().isEmpty)
                        {
                          return 'Confirm Password is required';
                        }
                        else
                        {
                          return null;
                        }
                      },
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: MaterialButton(
                onPressed: () {
                  if (_signUpKey.currentState.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInOne()));
                  }
                },
                //since this is only a UI app
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'SFUIDisplay',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Color(0xffff2d55),
                elevation: 0,
                minWidth: 400,
                height: 50,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
