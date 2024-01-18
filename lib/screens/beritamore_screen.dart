import 'package:bisabisnis/screens/berita1_screen.dart';
import 'package:bisabisnis/screens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List berita = [
  'Lewat Acara ini, BRI Tunjukan Komitmen dalam Perkuat Desa',
  'Program Pendampingan Mandiri, Solusi UMKM Hebat!',
  'Program UMKM With BCA Telah Diresmikan Kemenparekraf',
];

List linkberita = [
  Berita1Screen(),
  BeritamoreScreen(),
  BeritamoreScreen(),
];

List fotoberita = [
  "images/Berita1.jpeg",
  "images/Makanan & Minuman.jpg",
  "images/Konsep Dasar Bisnis Makanan dan Minuman.jpg",
];

// ignore: must_be_immutable
class BeritamoreScreen extends StatefulWidget {
  @override
  _BeritamoreScreenState createState() => _BeritamoreScreenState();
}

class _BeritamoreScreenState extends State<BeritamoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 020, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "BeritaBisnis",
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Material(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NavigationPage()));
                          },
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 0, right: 10, bottom: 15),
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
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
                                builder: (context) => linkberita[index]));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 900,
                            height: 70,
                            padding: EdgeInsets.only(top: 7, bottom: 5),
                            margin: EdgeInsets.only(
                                left: 0, right: 0, bottom: 4, top: 4),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: ListTile(
                              leading: Container(
                                padding: EdgeInsets.all(5),
                                height: 200,
                                width: 90,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("${fotoberita[index]}"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              title: Text(
                                berita[index],
                                style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 370,
                            height: 1,
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
    );
  }
}
