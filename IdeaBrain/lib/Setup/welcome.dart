import 'package:flutter/material.dart';
import 'package:you2auth/Setup/signIn.dart';
import 'package:you2auth/Setup/sign_up.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            onPressed: navigateToSignIn,
            child:Text('Sign In') ,
          ),
          RaisedButton(
            onPressed: navigateToSignUp,
            child:Text('Sign up') ,
          )
        ],
      ),
    );
  }

  void navigateToSignIn(){
    Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginPage(),fullscreenDialog: true));
  }
  void navigateToSignUp(){
    Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUpPage(),fullscreenDialog: true));
  }
}
