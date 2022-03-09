import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:humanation/login/login.dart';
import 'package:humanation/register/register.dart';
import 'landing/landing_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Landing());
}
