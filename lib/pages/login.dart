// ignore_for_file: prefer_const_constructors, unused_import, implementation_imports

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:goodfood/pages/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('GoodFood'),
          titleTextStyle: TextStyle(color: Colors.blueGrey[700], fontSize: 25, fontWeight: FontWeight.bold),
          centerTitle: true,
          backgroundColor: Colors.white70,
        ),
    body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/pan1.png', height: 200, width: 200,),
            ),
            Divider(
              height: 50,
            ),
            TextFormField(
              initialValue: 'Enter username',
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            Divider(
              height: 50,
            ),
            TextFormField(
              initialValue: 'Enter password',
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            Divider(
              height: 50,
            ),
            SizedBox(
              height: 50, width: 150,
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                }, 
                label: Text('Sign in', style: TextStyle(fontSize: 20, color: Colors.blueGrey[700])),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),), 
                backgroundColor: Colors.blueGrey[200],             
              ),
            ),
          ],
        ),
        ),
    ),
    ));
  }
}