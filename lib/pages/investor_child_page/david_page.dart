import "package:bisabisnis/pages/investor_child_page/apply_investor/david_apply_page.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class DavidPage extends StatefulWidget {
  const DavidPage({super.key});

  @override
  State<DavidPage> createState() => _DavidPageState();
}

class _DavidPageState extends State<DavidPage> {
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
                backgroundImage: AssetImage('assets/icons/businessman2.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text('David Reynaldi',
              style: GoogleFonts.montserrat(
                fontSize: 20,
                color: Colors.blueAccent,
                fontWeight: FontWeight.w600,
              )),
          Text('CEO Gadgetin Indonesia',
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
                          'David Reynaldi, sebagai CEO Gadgetin, memimpin perusahaan dengan visi yang kuat dan dedikasi terhadap industri teknologi. Dengan pengalaman latar belakangnya yang kaya, David memainkan peran sentral dalam mengarahkan Gadgetin ke arah pertumbuhan dan inovasi yang berkelanjutan. Keahliannya dalam mengidentifikasi tren pasar dan strategi pengembangan produk telah menjadi faktor utama dalam kesuksesan Gadgetin di dunia teknologi. Sebagai pemimpin yang inspiratif, David Reynaldi juga terkenal karena kemampuan memimpin tim dengan efektif dan menciptakan lingkungan kerja yang dinamis dan kolaboratif.',
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
                      'Rp 6,883,910.00',
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
                      '4',
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
                    return const DavidApplyPage();
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
