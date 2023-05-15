import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediclinic_nepal/chat.dart';
import 'package:mediclinic_nepal/chatroom.dart';
import 'package:mediclinic_nepal/methods.dart';
import 'package:firebase_auth/firebase_auth.dart';

class searchscreen extends StatefulWidget {
  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen>
    with WidgetsBindingObserver {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;
  Map<String, dynamic> userMap = {};
  final TextEditingController _search = TextEditingController();
  bool isloading = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    setStatus("Active now");
  }

  void setStatus(String status) async {
    await _firestore
        .collection('users')
        .doc(_auth.currentUser!.uid)
        .update({"status": status});
  }

  @override
  void didChangeAppLifecycle(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      setStatus("Active now");
    } else {
      setStatus("Offline");
    }
  }

  String chatRoomId(String user1, String user2) {
    if (user1.toLowerCase().codeUnits[0] > user2.toLowerCase().codeUnits[0]) {
      return "$user1$user2";
    } else {
      return "$user2$user1";
    }
  }

  void onSearch() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    setState(() {
      isloading = true;
    });
    await _firestore
        .collection('users')
        .where("email", isEqualTo: _search.text)
        .get()
        .then((value) {
      setState(() {
        userMap = value.docs[0].data();
        isloading = false;
      });
      print(userMap);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text('Account'),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          actions: [],
        ),
        body: isloading
            ? Center(
                child: Container(
                child: CircularProgressIndicator(
                  color: Colors.grey,
                ),
              ))
            : Stack(
                children: [
                  Image.asset(
                    'assets/search.jpg',
                    width: 1700,
                    height: 1000,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.2),
                    colorBlendMode: BlendMode.darken,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 500),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(100)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: TextField(
                              controller: _search,
                              textCapitalization: TextCapitalization.words,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  hintText: 'Search Accounts',
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(bottom: 500, left: 430),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: onSearch,
                          icon: Icon(FontAwesomeIcons.search)),
                    ),
                  )),
                  userMap.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(
                              top: 150, left: 120, bottom: 150),
                          child: Container(
                            height: 59,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(100)),
                            child: ListTile(
                              leading: Icon(
                                Icons.person,
                                color: Colors.blue.shade800,
                                size: 40,
                              ),
                              onTap: () {
                                String roomId = chatRoomId(
                                    _auth.currentUser?.displayName ?? "name",
                                    userMap['name']);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => chatroom(
                                              chatRoomId: roomId,
                                              userMap: userMap,
                                            )));
                              },
                              title: Text(
                                userMap['name'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(userMap['email']),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ));
  }
}
