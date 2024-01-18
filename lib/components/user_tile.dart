import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class UserTile extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  List temporarytext = [
    "You should learn chapter 3 ;)",
    "See you at 9 AM!",
  ];

  UserTile({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 500,
            height: 70,
            padding: EdgeInsets.only(top: 7, bottom: 5),
            margin: EdgeInsets.only(left: 15, right: 20, bottom: 4, top: 4),
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 1),
                borderRadius: BorderRadius.circular(5)),
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.all(5),
                height: 200,
                width: 55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/profil2.png"),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle,
                ),
              ),
              title: Text(
                text,
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Start chatting with $text",
                style: TextStyle(
                  color: Colors.white54.withOpacity(0.6),
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 70),
            margin: EdgeInsets.only(left: 70),
            width: 285,
            height: 1,
            decoration: BoxDecoration(
              color: Colors.white24,
            ),
          ),
        ],
      ),
    );
  }
}
