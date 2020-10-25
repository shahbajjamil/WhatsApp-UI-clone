/*
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsappp/whatHome.dart';

class WhatSplaph extends StatefulWidget {
  @override
  _WhatSplaphState createState() => _WhatSplaphState();
}

class _WhatSplaphState extends State<WhatSplaph> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 5), onLoadingComplete());
  }

  onLoadingComplete() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (Context) => WhatsHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.8,
                child: new Center(
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    child: Card(
                        elevation: 18,
                        child: Image.asset("assets/images/launcher.png")),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                // color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "from",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "FACEBOOK",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
