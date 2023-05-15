import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:mediclinic_nepal/methods.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class appoint extends StatefulWidget {
  @override
  State<appoint> createState() => _appointState();
}

class _appointState extends State<appoint> {
  TextEditingController _name = TextEditingController();

  TextEditingController _email = TextEditingController();

  TextEditingController _phone = TextEditingController();

  TextEditingController _problem = TextEditingController();

  bool isloading = false;
  DateTime _dateTime = DateTime.now();

  void register(
    String name,
    String email,
    String phone,
    String problem,
    String dateTime,
  ) {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2025))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
    _firestore.collection('Appointment').add({
      "name": name,
      "email": email,
      "phone no": phone,
      "problem": problem,
      "Appointment date": dateTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('Appointment'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: isloading
          ? Center(
              child: Container(
                height: 40,
                width: 40,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/register.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Expanded(
                      child: TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.face_rounded,
                        color: Colors.indigo[600],
                      ),
                      hintText: 'Enter a Name',
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Expanded(
                      child: TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                    ],
                    controller: _phone,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone_android_rounded,
                        color: Colors.indigo[600],
                      ),
                      hintText: 'Enter a phone number',
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Expanded(
                      child: TextField(
                    controller: _email,
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.email_rounded, color: Colors.indigo[600]),
                      hintText: 'Enter a Email',
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Expanded(
                      child: TextField(
                    controller: _problem,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.report_problem_rounded,
                          color: Colors.indigo[600]),
                      hintText: 'Report Problem',
                    ),
                  )),
                ),
                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(40)),
                    height: 40,
                    width: 80,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue.shade800)),
                        onPressed: () {
                          if (_name.text.isNotEmpty &&
                              _email.text.isNotEmpty &&
                              _phone.text.isNotEmpty &&
                              _problem.text.isNotEmpty) {
                            register(_name.text, _email.text, _phone.text,
                                _problem.text, _dateTime.toString());

                            print('Registered Sucessfully');
                          } else {
                            setState(() {
                              isloading = true;
                            });

                            print('Please enter on field');
                          }
                        },
                        child: Text('Book')))
              ],
            ),
    );
  }
}
