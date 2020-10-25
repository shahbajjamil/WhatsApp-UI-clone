/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';
import 'package:whatsappp/splashScreen.dart';
import 'whatHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsAppp",
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        accentColor: Colors.green,
      ),
      home: WhatSplaph(),
    );
  }
}
