import 'dart:html';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediclinic_nepal/nearbyhospital.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue.shade800,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => nearby())));
          },
          child: Icon(FontAwesomeIcons.mapLocationDot)),
      appBar: AppBar(
        title: Text(
          'Locations',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade800,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/location.jpg',
              height: 1000,
              width: 2000,
              fit: BoxFit.fill,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
            ListView(scrollDirection: Axis.vertical, children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BHARATPUR HOSPITAL',
                        style: TextStyle(fontSize: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(109)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir/27.6607798,84.4277693/MCJP%2BQJ4+Bharatpur+Hospital,+Bharatpur+44200/@27.6712894,84.4245913,15z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3994fb2d05f2e51b:0x98de893294648bbe!2m2!1d84.4365657!2d27.6818787');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 200,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'BHARATPUR SAMUDAYIK HOSPITAL LIMITED',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(16)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir/27.6607798,84.4277693/MCJM%2B6G5+Bharatpur+Samudayik+Hospital+Limited,+Bharatpur+44200/@27.6706356,84.4245296,15z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3994fb2c2f891239:0xeb3be491f6f962fc!2m2!1d84.4338708!2d27.680524');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BHARATPUR CENTRAL HOSPITAL',
                        style: TextStyle(fontSize: 27),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(27)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir//MCHJ%2B889+Bharatpur+Central+Hospital,+Mini+Ring+Rd,+Bharatpur+44207/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3994fb2ed8336be1:0xccbd3b0bb4c7a9e5?sa=X&ved=2ahUKEwj49Nzlkbj8AhV17DgGHb76DjQQ48ADegQIDRAK');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 200,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Mankamana Hospital',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(27)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir/27.6607798,84.4277693/Manakamana+Hospital,+Bharatpur,+44207/@27.6699253,84.4226521,15z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3994fb293555fb95:0x95893291bb406000!2m2!1d84.4316003!2d27.6784682');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Narayani Samudhiyak',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(64)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir/27.6607798,84.4277693/%E0%A4%A8%E0%A4%BE%E0%A4%B0%E0%A4%BE%E0%A4%AF%E0%A4%A3%E0%A5%80+%E0%A4%B8%E0%A4%BE%E0%A4%AE%E0%A5%81%E0%A4%A6%E0%A4%BE%E0%A4%AF%E0%A4%BF%E0%A4%95+%E0%A4%85%E0%A4%B8%E0%A5%8D%E0%A4%AA%E0%A4%A4%E0%A4%BE%E0%A4%B2,+Hospital+Rd,+Bharatpur+44207/@27.6712967,84.423151,15z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3994fb2e4ba119f9:0x79392d0742e31a33!2m2!1d84.4325869!2d27.6814885');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Chitwan Medical College Hospital',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(115)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir//Chitwan+Medical+College+Teaching+Hospital,+BHARATPUR+10,+44200/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x39eb191c8aa33fbf:0x679fcbd7dd299524?sa=X&ved=2ahUKEwjnwpikyOD8AhWGSmwGHShWBU4Q48ADegQIFBAP');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Shree Puspanjali Hospital Pvt Ltd ',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(12)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir//MCJJ%2BX4G+Shree+Puspanjali+Hospital+Pvt+Ltd,+Bharatpur+44200/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3994fb2fb4a1a7d7:0xe6d151cc72dbc9c2?sa=X&ved=2ahUKEwjnwpikyOD8AhWGSmwGHShWBU4Q48ADegQICBAM');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Dev Hospital Pvt. Ltd. ',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(7)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir//MCJJ%2BFQ2+Dev+Hospital+Pvt.+Ltd.+Bharatpur,+Chitwan,+Bharatpur+44200/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3994fbc4ab0ed3b7:0xb36860b63f4ffb93?sa=X&ved=2ahUKEwjnwpikyOD8AhWGSmwGHShWBU4Q48ADegQIExAN');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'National City Hospital Limited',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(29)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir/27.6607798,84.4277693/MCJJ%2BH95+National+City+Hospital+Limited,+Bharatpur+44200/@27.6712967,84.4245296,15z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3994fb2e57e19a9f:0x1e1a1b33901c6cb!2m2!1d84.4309985!2d27.6813811');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Bharatpur Eye Hospital',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(1)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir//MC8F%2BGH2+Bharatpur+Eye+Hospital,+Bypass+Rd,+Bharatpur+44207/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3994fb763b092b4d:0xae72c8c4ac96fe45?sa=X&ved=2ahUKEwjnwpikyOD8AhWGSmwGHShWBU4Q48ADegQIEBAM');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Asha Hospital',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(5)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir//Asha+Hospital,+Bharatpur+44200/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3994e4d3dfb552f7:0x6bbcd9c0707ca6?sa=X&ved=2ahUKEwjnwpikyOD8AhWGSmwGHShWBU4Q48ADegQIDxAM');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Sapta gandaki hospital Bharatpur',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(4)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir//MCHJ%2BW5F+Sapta+gandaki+hospital+Bharatpur,+Mini+Ring+Rd,+Bharatpur+44207/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3994fbebcaf3b1a7:0x5e9d6b8362479f21?sa=X&ved=2ahUKEwjnwpikyOD8AhWGSmwGHShWBU4Q48ADegQIDRAL');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Bharatpur Family Planning hospital',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(4)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir//MCCQ%2BFFH+Bharatpur+Family+Planning+hospital,+Bharatpur+44207/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3994e52ac92ef0e9:0xab1f0cf42abc0111?sa=X&ved=2ahUKEwjnwpikyOD8AhWGSmwGHShWBU4Q48ADegQIDBAM');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Chitwan Om Hospital',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(3)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir//MCJJ%2BCW7+Chitwan+Om+Hospital,+Hospital+Rd,+Bharatpur+44207/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3994fb2e88bac1a9:0xbee022772e3fcf81?sa=X&ved=2ahUKEwjnwpikyOD8AhWGSmwGHShWBU4Q48ADegQICxAM');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          'Maulakalika Hospital',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              '(34)',
                              style: TextStyle(
                                color: Color.fromARGB(255, 164, 163, 163),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 5),
                        child: Text(
                          'Open 24 Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.directions,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                style: TextStyle(color: Colors.blue),
                                text: 'Directions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        'https://www.google.com/maps/dir//MCJJ%2B565+Maulakalika+Hospital,+Bharatpur+44207/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3994fb2ee3bcd887:0x57bdfb3e02161527?sa=X&ved=2ahUKEwjnwpikyOD8AhWGSmwGHShWBU4Q48ADegQIEhAO');
                                  })
                          ],
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  height: 230,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
