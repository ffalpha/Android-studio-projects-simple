import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:you2auth/Pages/Home.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:you2auth/Pages/Notverfied.dart';
import 'package:you2auth/services/usermanagment.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  GoogleSignIn googleAuth = new GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            Hero(
              tag: 'hero',
              child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 48.0,
                  child: Image.asset('assets/logo/logo.png')),
            ),
            SizedBox(height: 48.0),
            TextField(
              autofocus: false,
              onChanged: (value) {
                if (value.isEmpty) {
                  return "Please add a valid Email";
                } else {
                  setState(() {
                    _email = value;
                  });
                }
              },
              decoration: InputDecoration(
                  hintText: 'Enter your email',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  )),
            ),
            SizedBox(height: 15.0),
            TextField(
              autofocus: false,
              onChanged: (value) {
                if (value.length < 6) {
                  return "Please add a valid Password";
                } else {
                  setState(() {
                    _password = value;
                  });
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Enter your password',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  )),
            ),
            RaisedButton(
              onPressed: signIn,
              child: Text('Sign In'),
            )
          ],
        ),
      ),
    );
  }

  //Firebase User Authnetication
  Future<void> signIn() async {
      try {
        AuthResult result = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        FirebaseUser user = result.user;
        bool kalana = user.isEmailVerified;

        Navigator.pop(context);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(user: user)));
      } catch (e) {
        print(e.message);
      }
    }

}
