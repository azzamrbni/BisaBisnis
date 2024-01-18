import "package:bisabisnis/pages/investor_child_page/apply_investor/jonathan_apply_page.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class JonathanPage extends StatefulWidget {
  const JonathanPage({super.key});

  @override
  State<JonathanPage> createState() => _JonathanPageState();
}

class _JonathanPageState extends State<JonathanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const BackButton(color: Colors.white),
      ),
      body: SafeArea(
          child: Column(
        children: [
          //Title
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/icons/businessman3.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Jonathan',
              style: GoogleFonts.montserrat(
                fontSize: 20,
                color: Colors.blueAccent,
                fontWeight: FontWeight.w600,
              )),
          Text('CFO BukaModal Indonesia',
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              )),
          const SizedBox(
            height: 20,
          ),

          //Deskripsi
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deskripsi',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.2,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Jonathan, CFO di BukaModal Indonesia, adalah seorang pemimpin keuangan berpengalaman. Dengan keahliannya dalam merumuskan strategi keuangan inovatif, Jonathan telah memainkan peran kunci dalam pertumbuhan perusahaan. Analisis tajam dan dedikasinya terhadap keseimbangan keuangan membuatnya menjadi tulang punggung tim eksekutif. Jonathan juga berkontribusi pada budaya perusahaan yang inklusif, menjadikannya sosok penting dalam kesuksesan BukaModal Indonesia.',
                          softWrap: true,
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Total Dana Diinvestasi
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Text(
                      'Total Dana Diinvestasi',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Text(
                      'Rp 11,973,200.00',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Total Mitra / Pelaku Usaha
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Text(
                      'Total Mitra / Pelaku Usaha',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Text(
                      '3',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const JonathanApplyPage();
                  }));
                },
                child: Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ajukan Investor',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      )),
    );
  }
}
