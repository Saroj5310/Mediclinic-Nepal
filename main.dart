import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'beginning.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseOptions options = const FirebaseOptions(
    appId: '1:523275967445:android:fd9917bf24b54e75a6bb5c',
    apiKey: 'AIzaSyB4RcAcy72LGqb_qPsdz4-xcAYdMnb3cWU',
    databaseURL: 'https://mediclinicnepal-default-rtdb.firebaseio.com/',
    messagingSenderId: '523275967445',
    projectId: 'mediclinicnepal',
  );
  await Firebase.initializeApp(options: options);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mediclinic Nepal',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: initial(),
    );
  }
}
