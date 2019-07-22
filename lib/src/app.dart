import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Log Me In!',
      home: Scaffold(
        appBar: AppBar(title: Text('Log Me In!'),),
        body: LoginScreen(),
      ),
    );
  }
}

