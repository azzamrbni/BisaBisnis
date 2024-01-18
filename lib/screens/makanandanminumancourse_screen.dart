import 'package:bisabisnis/screens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List saran = [
  '3 Hal yang Harus Diperhatikan saat Meeting',
  'Pelatihan dan Pendidikan Khusus Kuliner!',
  'Strategi Pemasaran Online dan Offline',
];

List waktusaran = [
  '11 : 05',
  '15 : 27',
  '07 : 44',
];

List fotosaran = [
  "images/Berita1.jpeg",
  "images/Makanan & Minuman.jpg",
  "images/Konsep Dasar Bisnis Makanan dan Minuman.jpg",
];

// ignore: must_be_immutable
class makanandanminumancourseScreen extends StatefulWidget {
  @override
  State<makanandanminumancourseScreen> createState() =>
      _makanandanminumancourseScreenState();
}

class _makanandanminumancourseScreenState
    extends State<makanandanminumancourseScreen> {
  bool isVideosSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Makanan & Minuman",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: 100,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white54,
                image: DecorationImage(
                    image: AssetImage(
                        "images/Konsep Dasar Bisnis Makanan dan Minuman.jpg"),
                    fit: BoxFit.fill),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 90,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Konsep Dasar Bisnis Makanan dan Minuman",
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "08 : 05",
              style: GoogleFonts.montserrat(
                color: Color.fromARGB(255, 83, 120, 240),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Pada video ini, akan dibedah konsep dan fundamental dalam melakukan bisnis FnB.",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Video lainnya",
                        style: GoogleFonts.montserrat(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ListView.builder(
                    itemCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavigationPage()));
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 900,
                              height: 80,
                              padding: EdgeInsets.only(top: 1, bottom: 0),
                              margin: EdgeInsets.only(
                                  left: 0, right: 0, bottom: 8, top: 8),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 83, 120, 240)
                                      .withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(style: BorderStyle.solid)),
                              child: ListTile(
                                leading: Container(
                                  width: 90,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("${fotosaran[index]}"),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      child: Icon(
                                        Icons.play_arrow_rounded,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text(
                                  saran[index],
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  waktusaran[index],
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 370,
                              height: 0,
                              decoration: BoxDecoration(
                                color: Colors.white10,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
