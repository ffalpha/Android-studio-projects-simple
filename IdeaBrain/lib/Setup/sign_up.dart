import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:you2auth/Setup/signIn.dart';
import 'package:you2auth/services/usermanagment.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage > {
  String _email,_password;
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Form(
        key:_formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator:(input){
                if(input.isEmpty){
                  return "Please add a valid email";
                }
              },
              onSaved: (input)=>_email=input,
              decoration: InputDecoration(
                  labelText: 'Email'
              ),
            ),
            TextFormField(
              validator:(input){
                if(input.length<6){
                  return "Please add a Password";
                }
              },
              onSaved: (input)=>_password=input,
              decoration: InputDecoration(
                  labelText: 'Password'
              ),
              obscureText: true,
            ),
            RaisedButton(
              onPressed: signIn,
              child:Text('Sign Up') ,
            )
          ],
        ),
      ),
    );
  }
  //Firebase User Authnetication
  Future<void> signIn() async{
    final formState=_formKey.currentState;
    print(_password);
    if(formState.validate()){
      formState.save();
      try{
        AuthResult result= await FirebaseAuth.instance.createUserWithEmailAndPassword(email:_email, password: _password);

        FirebaseUser user=result.user;
        UserMangement().storeNewUser(user);
        user.sendEmailVerification();

        Navigator.of(context).pop();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      }catch(e){
        print(e.message);

      }

    }
  }
}
