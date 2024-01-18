import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  const ChatBubble({
    super.key,
    required this.message,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:
            isCurrentUser ? Color.fromARGB(255, 83, 120, 240) : Colors.white24,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      child: Text(
        message,
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
