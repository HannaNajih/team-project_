import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:teamproject/myApp.dart';

import 'firebase_options.dart';

Future<void> main() async {
  runApp(MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
