import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final FocusNode? focusNode;

  const MyTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SizedBox(
        height: 45,
        child: TextField(
          style: TextStyle(color: Colors.white),
          obscureText: obscureText,
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            fillColor: Colors.white24,
            filled: true,
            hintText: hintText,
            hintStyle: GoogleFonts.montserrat(
              color: const Color.fromARGB(47, 255, 255, 255),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
