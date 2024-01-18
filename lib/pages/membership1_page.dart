import 'package:bisabisnis/pages/investor_child_page/membership_child_page/advance_page.dart';
import 'package:bisabisnis/pages/investor_child_page/membership_child_page/elite_page.dart';
import 'package:bisabisnis/pages/investor_child_page/membership_child_page/starter_page.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Berlangganan extends StatefulWidget {
  const Berlangganan({super.key});

  @override
  State<Berlangganan> createState() => _BerlanggananState();
}

class _BerlanggananState extends State<Berlangganan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        leading: const BackButton(color: Colors.white),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Text(
                "Pilih Paket Berlangganan",
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),

      //body
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const StarterPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          const Color.fromARGB(255, 63, 63, 63),
                          const Color.fromARGB(255, 37, 37, 37).withAlpha(210)
                        ],
                        radius: 1.5,
                      ),
                      boxShadow: const [BoxShadow(blurRadius: 20)],
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Starter Package',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.blueAccent,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BisaKelas',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Modul video belajar full all category',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.blueAccent,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BisaBerita',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Artikel seputar bisnis mingguan',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blueAccent,
                                  Colors.blueAccent.withAlpha(150)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Rp 300.000 / tahun',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Advance Package
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const AdvancePage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 260,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          const Color.fromARGB(255, 28, 25, 96),
                          const Color.fromARGB(255, 13, 12, 48).withAlpha(150)
                        ],
                        radius: 1,
                      ),
                      boxShadow: const [BoxShadow(blurRadius: 10)],
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Advance Package',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.blueAccent,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BisaKelas',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Modul video belajar full all category',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.blueAccent,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BisaBerita',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Artikel seputar bisnis mingguan',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.blueAccent,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BisaModal',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Cari dan pengajuan dana investor',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blueAccent,
                                  Colors.blueAccent.withAlpha(150)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Rp 400.000 / tahun',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Elite Package
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ElitePage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 370,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          const Color.fromARGB(255, 63, 20, 98),
                          const Color.fromARGB(255, 32, 10, 50).withAlpha(150)
                        ],
                        radius: 1,
                      ),
                      boxShadow: const [BoxShadow(blurRadius: 10)],
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Elite Package',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.blueAccent,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BisaKelas',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Modul video belajar full all category',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.blueAccent,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BisaBerita',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Artikel seputar bisnis mingguan',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.blueAccent,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BisaModal',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Cari dan pengajuan dana investor',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Icon(
                                    Icons.check_circle_outline_rounded,
                                    color: Colors.blueAccent,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BisaMentor',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Bimbingan eksklusif dengan pengusaha sukses',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blueAccent,
                                  Colors.blueAccent.withAlpha(150)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Rp 500.000 / tahun',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
