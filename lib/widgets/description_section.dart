import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          SizedBox(height: 40),
          Text(
            "Coming Soon!",
            style: GoogleFonts.montserrat(
              fontSize: 26,
              color: Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
