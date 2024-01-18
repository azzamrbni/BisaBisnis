import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  final VoidCallback showLogInPage;
  const SignUpPage({
    Key? key,
    required this.showLogInPage,
  }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

final currentUser = FirebaseAuth.instance.currentUser!;

class _SignUpPageState extends State<SignUpPage> {
  // text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _displayNameController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    _firstNameController.dispose();
    _displayNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  // get current user
  User? getCurrentUser() {
    return FirebaseAuth.instance.currentUser;
  }

  Future signUp() async {
    if (passwordConfirmed()) {
      // create user
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      //add user details
      addUserDetails(
        _firstNameController.text.trim(),
        _lastNameController.text.trim(),
        _emailController.text.trim(),
        int.parse(_ageController.text.trim()),
      );
    }
  }

  Future addUserDetails(
      String firstName, String lastName, String email, int age) async {
    await FirebaseFirestore.instance.collection('users').add({
      'first name': firstName,
      'last name': lastName,
      'age': age,
      'email': email,
      'uid': currentUser.uid,
    });
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Image.asset(
                  'assets/icons/logo_bb.png',
                  width: 80,
                  height: 80,
                ),
              ),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.montserrat(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              //first Name
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'First Name',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
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
                      controller: _firstNameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan nama anda...',
                        hintStyle: GoogleFonts.montserrat(
                            fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),

              //Last Name
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Last Name',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
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
                      controller: _lastNameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan nama anda...',
                        hintStyle: GoogleFonts.montserrat(
                            fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),

              // Age
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Age',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
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
                      controller: _ageController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Masukkan umur anda...',
                        hintStyle: GoogleFonts.montserrat(
                            fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),

              //email
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        fontSize: 17,
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

              SizedBox(height: 15),

              //password text field
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    Text(
                      "Password",
                      style: GoogleFonts.montserrat(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        style: GoogleFonts.montserrat(color: Colors.white),
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Masukkan password anda...',
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),

              // Confirm Password
              Padding(
                padding: const EdgeInsets.only(right: 195.0),
                child: Text(
                  "Confirm Password",
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
              ),

              // Confirm Password Textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        style: GoogleFonts.montserrat(color: Colors.white),
                        controller: _confirmpasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Masukkan ulang password anda...',
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Sign Up button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                child: GestureDetector(
                  onTap: signUp,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              Column(
                children: [
                  Text(
                    "Atau",
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // belum punya akun?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sudah punya akun? ",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.showLogInPage,
                    child: Text(
                      "Masuk ke akun",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
