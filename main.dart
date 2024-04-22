// import 'package:day15_shoes/pages/homepage.dart';
// import 'package:flutter/material.dart';

// void main() =>
//     runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase core
import 'package:day15_shoes/pages/homepage.dart';

void main() async {
  // Initialize Firebase before running the app
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyB2UHr5Plyleb5odUk7V4aBCPsM3snKOeo",
      appId: "1:865570347321:android:eab29800fbe5c80badf0e8",
      messagingSenderId: "865570347321 ",
      projectId: "flutterproject-c19eb",
    ),
  );

  // Run the app
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}
