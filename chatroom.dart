import 'dart:html';
import 'dart:io' as io;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mediclinic_nepal/chat.dart';
import 'package:mediclinic_nepal/chatscreen.dart';
import 'package:mediclinic_nepal/methods.dart';

class chatroom extends StatelessWidget {
  final TextEditingController _message = TextEditingController();
  final String chatRoomId;
  final Map<String, dynamic> userMap;
  chatroom({required this.chatRoomId, required this.userMap});
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;

  void OnsendMessage() async {
    if (_message.text.isNotEmpty) {
      Map<String, dynamic> messages = {
        "chatroomId": chatRoomId,
        "sendby": _auth.currentUser?.displayName,
        "message": _message.text,
        "time": FieldValue.serverTimestamp()
      };
      await _firestore
          .collection('chatroom')
          .doc(chatRoomId)
          .collection('chats')
          .add(messages);
      _message.clear();
    } else {
      print("Enter some Text");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.indigo[700],
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => searchscreen())));
                },
                icon: Icon(Icons.arrow_back_ios)),
            actions: [
              IconButton(
                  onPressed: (() => chat()), icon: Icon(Icons.logout_rounded))
            ],
            title: StreamBuilder<DocumentSnapshot>(
              stream: _firestore
                  .collection("users")
                  .doc(userMap['uid'])
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.data != null) {
                  return Container(
                    child: Column(
                      children: [
                        Text(userMap['name']),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          snapshot.data!['status'],
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            )),
        body: Column(
          children: [
            Container(
              child: StreamBuilder<QuerySnapshot>(
                  stream: _firestore
                      .collection('chatroom')
                      .doc(chatRoomId)
                      .collection('chats')
                      .orderBy("time", descending: false)
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.data != null) {
                      return ListView.builder(
                        itemCount: snapshot.data?.docs.length,
                        itemBuilder: ((context, index) {
                          Map<String, dynamic> map = snapshot.data?.docs[index]
                              .data() as Map<String, dynamic>;
                          return messages(map);
                        }),
                      );
                    } else {
                      return Container();
                    }
                  }),
              color: Colors.grey[200],
              height: 540,
              width: 800,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: 50,
                width: 700,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.indigo[700]),
                        child: IconButton(
                            alignment: Alignment.center,
                            onPressed: () {},
                            icon: Icon(
                              Icons.photo,
                              size: 25,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                          textCapitalization: TextCapitalization.words,
                          controller: _message,
                          decoration: InputDecoration(
                              hintText: 'Send Message',
                              border: InputBorder.none)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.indigo[700]),
                        child: IconButton(
                            alignment: Alignment.center,
                            onPressed: OnsendMessage,
                            icon: Icon(
                              Icons.send_rounded,
                              color: Colors.white,
                              size: 25,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

Widget messages(Map<String, dynamic> map) {
  FirebaseAuth _auth = FirebaseAuth.instance;
  return Container(
      width: 90,
      alignment: map['sendby'] == _auth.currentUser?.displayName
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
            color: map['sendby'] == _auth.currentUser?.displayName
                ? Colors.indigo[700]
                : Color.fromARGB(255, 211, 211, 211),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          map["message"],
          style: TextStyle(
            color: map['sendby'] == _auth.currentUser?.displayName
                ? Colors.white
                : Colors.black,
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        margin: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
      ));
}
