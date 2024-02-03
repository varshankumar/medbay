// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'MedBay',
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: AppBar(
              centerTitle: true,
              backgroundColor: Colors.grey[800],
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(50)),
              ),
              elevation: 10,
              title: Transform(
                transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                child: Text('MedBay',
                    style: TextStyle(
                      color: Colors.blue, 
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      )
                      ),
              ),
            ),
          ),
          floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              Text(
            "\nWelcome Johnny Appleseed!",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              ),
              textAlign: TextAlign.center,
          ),
                Transform.scale(
                  scale: 2.0,
                  child: FloatingActionButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0))),
                      elevation: 30.0,
                      child: Icon(Icons.person),
                      backgroundColor: Colors.blue[600],
                      onPressed: () => accountUrl()),
                ),
                Transform.scale(
                  scale: 2.0,
                  child: FloatingActionButton(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0)),
                      elevation: 30.0,
                      child: Icon(Icons.local_hospital),
                      backgroundColor: Colors.red,
                      onPressed: () => riskSurvey()),
                ),
                Transform.scale(
                  scale: 2.0,
                  child: FloatingActionButton(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(45.0)),
                      elevation: 30.0,
                      child: Icon(Icons.center_focus_weak),
                      backgroundColor: Colors.amber[400],
                      onPressed: () => qrScan()),
                ),
                Transform.scale(
                  scale: 2.0,
                  child: FloatingActionButton(
                    elevation: 30.0,
                    child: Icon(Icons.place),
                    backgroundColor: Colors.green,
                    onPressed: () => googleMaps(),
                  ),
                ), 
              ]),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          backgroundColor: Colors.black,
          
          ),
        );
  }
}

void accountUrl() {
  _account() async {
    const url = 'https://account.medbay.repl.co';
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  _account();
}

void riskSurvey() {
  _riskSurvey() async {
    const url =
        'https://risk.medbay.repl.run';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _riskSurvey();
}

void qrScan(){
  _qrScan() async {
    const url =
        'https://www.the-qrcode-generator.com/scan';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _qrScan();
}

void googleMaps() {
  _googleMaps() async {
    const url =
        'https://www.google.com/maps/d/edit?mid=1gzKODJY6Erj0lWhB2Z1e8fhVPs_h95tw&usp=sharing';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _googleMaps();
}