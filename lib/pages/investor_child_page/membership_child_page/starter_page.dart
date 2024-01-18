import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(1, 255, 255, 255),
        leading: const BackButton(color: Colors.white),
        title: Text(
          'Pembayaran',
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Starter Package',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 15),

              // BisaKelas
              Row(
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
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 10),
              //BisaBerita
              Row(
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
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                'Rp 300.000',
                style: GoogleFonts.montserrat(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Pilih metode pembayaran',
                style: GoogleFonts.montserrat(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w500,
                ),
              ),

              //Metode Pembayaran
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // baris 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage('assets/icons/bca.png'),
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage('assets/icons/mandiri.png'),
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage('assets/icons/bni.jpg'),
                            )),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  //baris 2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage('assets/icons/visa.jpg'),
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage('assets/icons/mastercard.jpg'),
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage('assets/icons/jcb.png'),
                            )),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  //baris 3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/icons/alto.png'),
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/icons/prima.png'),
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage('assets/icons/alfamart.png'),
                            )),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  //baris 4
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage('assets/icons/indomaret.png'),
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              fit: BoxFit.scaleDown,
                              image: AssetImage('assets/icons/BCAKlikPay.png'),
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage('assets/icons/gopay.png'),
                              scale: 0.1,
                            )),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
