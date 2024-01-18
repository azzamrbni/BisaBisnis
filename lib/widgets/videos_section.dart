import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// static data for videos
List babmakanan = [
  'Pemahaman Dasar Bisnis Kuliner',
  'Penemuan Ide Menu Inovatif',
  'Perencanaan Strategi Bisnis',
  'Kesiapan Finansial dalam Dapur',
  'Pengembangan Keterampilan',
];

List waktuvideoList = [
  '08 : 05',
  '09 : 23',
];

// ignore: must_be_immutable
class VideoSection extends StatefulWidget {
  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: babmakanan.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            ExpansionTile(
              title: Text(
                babmakanan[index],
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                ),
              ),
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Coming Soon!',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
              onExpansionChanged: (bool expanded) {},
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ],
        );
      },
    );
  }
}
