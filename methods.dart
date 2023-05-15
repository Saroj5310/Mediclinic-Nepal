import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mediclinic_nepal/Homepage.dart';
import 'package:mediclinic_nepal/chat.dart';

// ignore: non_constant_identifier_names
Future<User?> CreateAccount(String name, String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  try {
    User? user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;
    if (user != null) {
      print("Account Created Sucessfull");
      user.updateProfile(displayName: name);
      await _firestore
          .collection('users')
          .doc(_auth.currentUser?.uid)
          .set({"name": name, "email": email, "status": "Unavaliable"});
      return user;
    } else {
      print("Account Creation Failed");
      return user;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future<User?> login(String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    User? user = (await _auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;
    if (user != null) {
      print("Login Sucessfull");
      return user;
    } else {
      print("Log in Failed");
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future signout(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    await _auth.signOut().then((value) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => chat(),
          ));
    });
  } catch (e) {
    print(e);
    print("error");
    return null;
  }
}

void logOut() async {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;
  await _firestore
      .collection('users')
      .doc(_auth.currentUser!.uid)
      .update({"status": "Offline"});
  await _auth.signOut();
}

void register(
  String name,
  String email,
  String phone,
  String problem,
) {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  _firestore.collection('Appointment').add({
    "name": name,
    "email": email,
    "phone no": phone,
    "problem": problem,
  });
}

// Add the selected date to a collection called "dates"

