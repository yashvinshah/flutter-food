// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:goodfood/pages/home.dart';
import 'pages/login.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Login(),
    '/home': (context) => Home(),
  },
));
