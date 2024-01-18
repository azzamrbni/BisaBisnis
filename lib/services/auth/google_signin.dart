import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? user = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth = await user?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      _auth.signInWithCredential(credential);
    } catch (error) {
      print(error);
    }
  }
}
