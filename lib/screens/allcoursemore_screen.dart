import 'package:bisabisnis/screens/course_screen.dart';
import 'package:bisabisnis/screens/home_screen.dart';
import 'package:bisabisnis/screens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List linkmateri = [
  CourseScreen('Makanan & Minuman'),
  NavigationPage(),
  NavigationPage(),
  NavigationPage(),
  NavigationPage(),
  NavigationPage(),
  NavigationPage(),
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

// ignore: must_be_immutable
class AllcoursemoreScreen extends StatefulWidget {
  @override
  _AllcoursemoreScreenState createState() => _AllcoursemoreScreenState();
}

class _AllcoursemoreScreenState extends State<AllcoursemoreScreen> {
  int currentIndex = 1;
  final screens = [
    HomePage(),
    AllcoursemoreScreen(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

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
                    Text(
                      "BisaKelas",
                      style: GoogleFonts.montserrat(
                        fontSize: 24,
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
                                  builder: (context) => NavigationPage()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 0, right: 10),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
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
                        (MediaQuery.of(context).size.height - 50 - 25) /
                            (4 * 95),
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
                        padding: EdgeInsets.only(left: 15, top: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/${imgList[index]}.jpg"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 140),
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
