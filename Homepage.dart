import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediclinic_nepal/doctors.dart';
import 'package:mediclinic_nepal/healthtip.dart';
import 'package:mediclinic_nepal/hospitals.dart';
import 'package:mediclinic_nepal/location.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          child: Center(
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          iconSize: 60,
                          color: Colors.blue.shade800,
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => location()));
                          }),
                          icon: Icon(FontAwesomeIcons.mapLocationDot)),
                      Expanded(child: Text('Location')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          iconSize: 60,
                          color: Colors.blue.shade800,
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => doctors()));
                          }),
                          icon: Icon(FontAwesomeIcons.userDoctor)),
                      Expanded(child: Text('Doctors'))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          color: Colors.blue.shade800,
                          iconSize: 60,
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => hospitals()));
                          }),
                          icon: Icon(FontAwesomeIcons.solidHospital)),
                      Expanded(child: Text('Hospitals'))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          color: Colors.blue.shade800,
                          iconSize: 60,
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => tips()));
                          }),
                          icon: Icon(FontAwesomeIcons.heartPulse)),
                      Expanded(
                          child: Text(
                        'Health Tips ',
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          height: 560,
          width: 450,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        ),
      ),
    );
  }
}
