import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app.dart';
import 'data/repositories/authentication_repo.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // TODO: Add widgets Binding
  // TODO: Init Local Storage
  // TODO: Await Native Splash
  // TODO: Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthenticationRepository()));
  // TODO: Initialize Authentication

  runApp(const App());
}