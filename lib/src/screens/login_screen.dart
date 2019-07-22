import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> with ValidationMixin{
  final formKey = GlobalKey<FormState>();

  String email;
  String password;
  
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              emailField(),
              passwordField(),
              Container(
                margin: EdgeInsets.only(top: 25.0),
              ),
              submitButton(),
            ],
          ),
        ),
      );

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'E-mail Address', hintText: 'you@exemple.com'),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Enter Password', hintText: ''),
      obscureText: true,
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      onPressed: () {
        if(formKey.currentState.validate()){
          formKey.currentState.save();
          print('Time to post the $email and $password to my API');
        }
      },
      child: Text(
        'Submit',
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.blueAccent,
    );
  }
}
