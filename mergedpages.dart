import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediclinic_nepal/Homepage.dart';
import 'package:mediclinic_nepal/appointment.dart';

import 'package:mediclinic_nepal/chat.dart';
import 'package:mediclinic_nepal/team.dart';
import 'Homepage.dart';
import 'chat.dart';

class mergedpages extends StatefulWidget {
  @override
  _mergedpagesState createState() => _mergedpagesState();
}

class _mergedpagesState extends State<mergedpages> {
  int currentTab = 0;
  final List<Widget> screens = [chat(), homepage(), appoint()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = homepage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(bucket: bucket, child: currentScreen),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue.shade800,
          onPressed: () {},
          child: Icon(
            Icons.qr_code_rounded,
            size: 40,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          elevation: 60,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: (() {
                          setState(() {
                            currentScreen = homepage();
                            currentTab = 0;
                          });
                        }),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home_rounded,
                              color: currentTab == 0
                                  ? Color.fromARGB(255, 9, 95, 243)
                                  : Colors.grey,
                              size: 40,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: currentTab == 0
                                      ? Color.fromARGB(255, 9, 95, 243)
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: (() {
                          setState(() {
                            currentScreen = chat();
                            currentTab = 1;
                          });
                        }),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.telegramPlane,
                              color: currentTab == 1
                                  ? Color.fromARGB(255, 9, 95, 243)
                                  : Colors.grey,
                              size: 40,
                            ),
                            Text(
                              'Chat',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: currentTab == 1
                                      ? Color.fromARGB(255, 9, 95, 243)
                                      : Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: (() {
                          setState(() {
                            currentScreen = appoint();
                            currentTab = 2;
                          });
                        }),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.book_online_rounded,
                              color: currentTab == 2
                                  ? Color.fromARGB(255, 9, 95, 243)
                                  : Colors.grey,
                              size: 35,
                            ),
                            Text(
                              'Appointment',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: currentTab == 2
                                      ? Color.fromARGB(255, 9, 95, 243)
                                      : Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: (() {
                          setState(() {
                            currentScreen = test();
                            currentTab = 3;
                          });
                        }),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.kitMedical,
                              color: currentTab == 3
                                  ? Color.fromARGB(255, 9, 95, 243)
                                  : Colors.grey,
                              size: 35,
                            ),
                            Text(
                              'Medical Test',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: currentTab == 3
                                      ? Color.fromARGB(255, 9, 95, 243)
                                      : Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ]),
          ),
        ));
  }
}
