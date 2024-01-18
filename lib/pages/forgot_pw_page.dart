import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content:
                Text('Password reset link sent to ${_emailController.text}'),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: const BackButton(color: Colors.white)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              "Enter Your Email and we will send you a password reset link",
              style: GoogleFonts.montserrat(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 295.0),
            child: Column(
              children: [
                Text(
                  'Email',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  style: GoogleFonts.montserrat(color: Colors.white),
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukkan email anda...',
                    hintStyle: GoogleFonts.montserrat(
                        fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: passwordReset,
            color: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Reset Password",
              style: GoogleFonts.montserrat(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
