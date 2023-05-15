import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('Medical Test'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Colors.grey[350],
      body: Center(
          child: Container(
        height: 280,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.white),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset(
              'assets/Norvic.jpg',
              height: 200,
              width: 200,
            ),
          ),
          Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.blue.shade800),
            child: Center(
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: 'BOOK A TEST',
                      style: TextStyle(color: Colors.white),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launch(
                              ' https://appointment.norvichospital.com/IME/Request%20App/frmVisaAppointment-aus.aspx');
                        })
                ]),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]),
      )),
    );
  }
}
