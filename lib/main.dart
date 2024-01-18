import 'dart:io';
import 'package:bisabisnis/screens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    Platform.isAndroid
        ? await Firebase.initializeApp(
            options: const FirebaseOptions(
            apiKey: 'AIzaSyAk_wEI2WWZp9bz7BiwV3UxOfm9-REJ38g',
            appId: '1:714760482679:android:b55d8a1b8d31a68d52bb72',
            messagingSenderId: '714760482679',
            projectId: 'bisabisnis-501bc',
          ))
        : await Firebase.initializeApp();
  } catch (error) {
    print('Error initializing Firebase : $error');
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: NavigationPage(),
    );
  }
}
