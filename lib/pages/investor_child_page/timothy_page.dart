import "package:bisabisnis/pages/investor_child_page/apply_investor/timoty_apply_page.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class TimothyPage extends StatefulWidget {
  const TimothyPage({super.key});

  @override
  State<TimothyPage> createState() => _TimothyPageState();
}

class _TimothyPageState extends State<TimothyPage> {
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
                backgroundImage: AssetImage('assets/icons/businessman1.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Timothy Ronald',
              style: GoogleFonts.montserrat(
                fontSize: 20,
                color: Colors.blueAccent,
                fontWeight: FontWeight.w600,
              )),
          Text('Investment Analyst CompanyFour',
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
                          'Timothy Ronald menjabat sebagai Analis Investasi di CompanyFour, membawa sejumlah pengetahuan keuangan dan keahlian analitis yang melimpah ke dalam tim. Dengan pandangan yang tajam terhadap tren pasar dan pemahaman mendalam terhadap prinsip investasi. Timothy memainkan peran penting dalam mengevaluasi peluang investasi potensial dan berkontribusi dalam proses pengambilan keputusan strategis.',
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
                      'Rp 20,803,000.00',
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
                      '7',
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
                    return const TimothyApplyPage();
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
