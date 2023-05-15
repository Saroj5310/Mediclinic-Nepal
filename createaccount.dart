import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediclinic_nepal/chatscreen.dart';
import 'package:mediclinic_nepal/methods.dart';

class createaccount extends StatefulWidget {
  @override
  _createaccountState createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isloading
            ? Center(
                child: Container(
                  height: 40,
                  width: 40,
                  child: CircularProgressIndicator(
                    color: Colors.grey[700],
                  ),
                ),
              )
            : Stack(
                children: [
                  Image.asset(
                    'assets/Loginimage.jpg',
                    width: 2000,
                    height: 1000,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.3),
                    colorBlendMode: BlendMode.darken,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 88),
                        child: Container(
                          height: 800,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius:
                                  BorderRadiusDirectional.circular(20)),
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(40),
                                  child: TextField(
                                    textCapitalization:
                                        TextCapitalization.words,
                                    controller: _name,
                                    decoration: InputDecoration(
                                      fillColor: Colors.black,
                                      hintText: 'Name',
                                      prefixIcon: Icon(
                                        Icons.face_rounded,
                                        color: Color.fromARGB(255, 13, 73, 141),
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(40),
                                  child: TextField(
                                    controller: _email,
                                    decoration: InputDecoration(
                                      fillColor: Colors.black,
                                      hintText: 'Email',
                                      prefixIcon: Icon(
                                        Icons.account_box_rounded,
                                        color: Color.fromARGB(255, 13, 73, 141),
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(40),
                                  child: TextField(
                                    obscureText: true,
                                    controller: _password,
                                    decoration: InputDecoration(
                                      fillColor: Color.fromARGB(255, 2, 2, 2),
                                      hintText: 'Password',
                                      prefixIcon: Icon(
                                        Icons.key_rounded,
                                        color: Color.fromARGB(255, 13, 73, 141),
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade800,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                50)),
                                    height: 45,
                                    width: 150,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.blue.shade800)),
                                      onPressed: () {
                                        if (_name.text.isNotEmpty &&
                                            _email.text.isNotEmpty &&
                                            _password.text.isNotEmpty) {
                                          setState(() {
                                            isloading = true;
                                          });
                                          CreateAccount(_name.text, _email.text,
                                                  _password.text)
                                              .then((user) {
                                            if (user != null) {
                                              setState(() {
                                                isloading = false;
                                              });
                                              print(
                                                  "Account Created Sucessfully");
                                            } else {
                                              print("Acount Creation Failed");
                                            }
                                            ;
                                          });
                                        } else {
                                          print("Please enter Fields");
                                        }
                                      },
                                      child: Text(
                                        'Create Account',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 7),
                                child: Text.rich(TextSpan(
                                    text: 'Log In',
                                    style: TextStyle(
                                        color: Colors.blue.shade800,
                                        fontWeight: FontWeight.bold),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap =
                                          (() => Navigator.pop(context)))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ));
  }
}
