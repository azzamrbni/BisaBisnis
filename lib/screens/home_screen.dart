import 'package:bisabisnis/pages/membership1_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bisabisnis/screens/allcoursemore_screen.dart';
import 'package:bisabisnis/screens/berita1_screen.dart';
import 'package:bisabisnis/screens/beritamore_screen.dart';
import 'package:bisabisnis/screens/makanandanminumancourse_screen.dart';
import 'package:bisabisnis/screens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Creating static data in lists

// Untuk BottomNavigationBar

List catNames = [
  "Category",
  'Classes',
  'Free Course',
  'BookStore',
  'Live Course',
  'LeaderBoard'
];

List imgList = [
  'Konsep Dasar Bisnis Makanan dan Minuman',
  'Fashion',
  'Manufaktur',
];

List linkrekom = [
  makanandanminumancourseScreen(),
  NavigationPage(),
  NavigationPage(),
];

List videoList = [
  'Introduction to Flutter',
  'Installing Flutter on Windows',
  'Setup Emulator on Windows',
  'Creating Our First App',
];

List rekomVideo = [
  'Bagaimana cara membuat impresi baik terhadap client? Berikut penjelasannya',
  'Materi yang Membahas Bagaimana Cara Membuat Bisnis Fashion dari Nol!',
  'Materi Bisnis Manufaktur yang Memiliki Potensi Tinggi di Masa Depan',
];

List wakturekomVideo = [
  '07:24',
  '11:05',
  '08:41',
  '07:36',
];

List berita = [
  'Lewat Acara ini, BRI Tunjukan Komitmen dalam Perkuat Desa',
  'Program Pendampingan Mandiri, Solusi UMKM Hebat!',
  'Program UMKM With BCA Telah Diresmikan Kemenparekraf',
];

List linkberita = [
  Berita1Screen(),
  NavigationPage(),
  NavigationPage(),
];

List fotoberita = [
  "images/Berita1.jpeg",
  "images/Makanan & Minuman.jpg",
  "images/Konsep Dasar Bisnis Makanan dan Minuman.jpg",
];

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List imageList = [
    {"id": 1, "image_path": 'images/Manufaktur.jpg'},
    {"id": 2, "image_path": 'images/Jasa.jpg'},
    {"id": 3, "image_path": 'images/Kreatif & Seni.jpg'},
  ];

  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white12),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              color: Colors.white10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 20),
                      width: 245,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 0, bottom: 15),
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: GoogleFonts.montserrat(
                            color: Colors.white.withOpacity(0.2),
                            fontSize: 13,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white.withOpacity(0.2),
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 20),
                      width: 125,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 83, 120, 240),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Berlangganan()));
                        },
                        child: Container(
                          width: 110,
                          height: 55,
                          alignment: Alignment.center,
                          child: Text(
                            "Berlangganan",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(currentIndex);
                    },
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Image.asset(
                              item['image_path'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2.5,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        print(entry);
                        print(entry.key);
                        return GestureDetector(
                          onTap: () =>
                              carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentIndex == entry.key ? 7 : 7,
                            height: 7.0,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? Colors.white
                                    : Colors.white38),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rekomendasi Video",
                      style: GoogleFonts.montserrat(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 50),
                    Material(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllcoursemoreScreen()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Text(
                            "See more",
                            style: GoogleFonts.montserrat(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 275,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => linkrekom[index],
                              ));
                        },
                        child: Container(
                          width: 260,
                          margin: EdgeInsets.only(left: 0, right: 10),
                          padding: EdgeInsets.only(
                              left: 10, right: 5, top: 5, bottom: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 83, 120, 240),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Container(
                                height: 140,
                                width: 240,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "images/${imgList[index]}.jpg"),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Container(
                                    child: Icon(
                                      Icons.play_arrow_rounded,
                                      color: Colors.white,
                                      size: 65,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                imgList[index],
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                wakturekomVideo[index],
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                rekomVideo[index],
                                style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "BeritaBisnis",
                      style: GoogleFonts.montserrat(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
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
                                    builder: (context) => BeritamoreScreen()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 0),
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            child: Text(
                              "See more",
                              style: GoogleFonts.montserrat(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
