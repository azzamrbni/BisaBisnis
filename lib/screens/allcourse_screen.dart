import 'package:bisabisnis/pages/membership1_page.dart';
import 'package:bisabisnis/pages/profile_page.dart';
import 'package:bisabisnis/screens/course_screen.dart';
import 'package:bisabisnis/screens/home_screen.dart';
import 'package:bisabisnis/screens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List catNames = [
  "Category",
  'Classes',
  'Free Course',
  'BookStore',
  'Live Course',
  'LeaderBoard'
];

List imgList = [
  'Makanan & Minuman',
  'Fashion',
  'Jasa',
  'Manufaktur',
  'Kreatif & Seni',
  'Pertanian & Peternakan',
  'Lingkungan'
];

List linkmateri = [
  CourseScreen('Makanan & Minuman'),
  NavigationPage(),
  NavigationPage(),
  NavigationPage(),
  NavigationPage(),
  NavigationPage(),
  NavigationPage(),
];

// ignore: must_be_immutable
class AllcourseScreen extends StatefulWidget {
  @override
  _AllcourseScreenState createState() => _AllcourseScreenState();
}

class _AllcourseScreenState extends State<AllcourseScreen> {
  int currentIndex = 1;
  final screens = [
    HomePage(),
    AllcourseScreen(),
    HomePage(),
    HomePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
      ),
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
                          hintText: "Cari materi",
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
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "BisaKelas",
                      style: GoogleFonts.montserrat(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                GridView.builder(
                  padding: EdgeInsets.only(bottom: 20),
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 90 - 25) /
                            (4 * 100),
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => linkmateri[index],
                            ));
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/${imgList[index]}.jpg"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 155),
                            Text(
                              imgList[index],
                              style: GoogleFonts.montserrat(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
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
