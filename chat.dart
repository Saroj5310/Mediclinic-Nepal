import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediclinic_nepal/chatscreen.dart';
import 'package:mediclinic_nepal/createaccount.dart';
import 'package:mediclinic_nepal/methods.dart';
import 'package:url_launcher/url_launcher.dart';

class chat extends StatefulWidget {
  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
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
                        padding: const EdgeInsets.only(bottom: 160),
                        child: Container(
                            height: 800,
                            width: 400,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.7),
                                borderRadius:
                                    BorderRadiusDirectional.circular(20)),
                            child: Column(
                              children: [
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
                                          color:
                                              Color.fromARGB(255, 13, 73, 141),
                                          size: 35,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(40),
                                    child: TextField(
                                      controller: _password,
                                      decoration: InputDecoration(
                                        fillColor: Color.fromARGB(255, 2, 2, 2),
                                        hintText: 'Password',
                                        prefixIcon: Icon(
                                          Icons.key_rounded,
                                          color:
                                              Color.fromARGB(255, 13, 73, 141),
                                          size: 35,
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
                                      height: 40,
                                      width: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.blue.shade800)),
                                        onPressed: () {
                                          if (_email.text.isNotEmpty &&
                                              _password.text.isNotEmpty) {
                                            setState(() {
                                              isloading = true;
                                            });
                                            login(_email.text, _password.text)
                                                .then((user) {
                                              if (user != null) {
                                                print("Login Sucessfull");
                                                setState(() {
                                                  isloading = false;
                                                });
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (Context) =>
                                                            searchscreen()));
                                              } else {
                                                print("Login Failed");
                                              }
                                            });
                                          } else {
                                            print('Please Enter the Fields');
                                          }
                                        },
                                        child: Text(
                                          'Log In',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text.rich(TextSpan(
                                    text: 'Create Account',
                                    style: TextStyle(
                                        color: Colors.blue.shade800,
                                        fontWeight: FontWeight.bold),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = (() => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  createaccount()))))))
                              ],
                            )),
                      ),
                    ),
                  )
                ],
              ));
  }
}
