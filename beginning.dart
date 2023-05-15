import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediclinic_nepal/Homepage.dart';
import 'package:mediclinic_nepal/chatroom.dart';
import 'package:mediclinic_nepal/chatscreen.dart';
import 'package:mediclinic_nepal/mergedpages.dart';

class initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 9, 95, 243),
              child: Icon(
                FontAwesomeIcons.personWalkingDashedLineArrowRight,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => mergedpages(),
                    ));
              }),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/MEDICLINIC NEPAL MOBILE.jpg',
              fit: BoxFit.fitHeight,
            ),
          ],
        ));
  }
}
