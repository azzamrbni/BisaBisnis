import "package:bisabisnis/models/investor_model.dart";
import "package:bisabisnis/pages/investor_child_page/david_page.dart";
import "package:bisabisnis/pages/investor_child_page/jonathan_page.dart";
import 'package:bisabisnis/pages/investor_child_page/timothy_page.dart';
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:google_fonts/google_fonts.dart";

List page = [
  const TimothyPage(),
  const DavidPage(),
  const JonathanPage(),
];

class InvestorPage extends StatefulWidget {
  const InvestorPage({super.key});

  @override
  State<InvestorPage> createState() => _InvestorPageState();
}

class _InvestorPageState extends State<InvestorPage> {
  List<InvestorModel> investor = [];

  void _getInvestor() {
    investor = InvestorModel.getInvestor();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    _getInvestor();
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'BisaModal',
                      style: GoogleFonts.montserrat(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              // Textfield
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 10),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(top: 0, bottom: 15),
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
                ],
              ),

              // List Investor

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: investor.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      // list box
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return page[index];
                          }));
                        },
                        child: SizedBox(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  investor[index].imagePath,
                                ),
                              ),
                              const SizedBox(width: 7),

                              // list investor
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    investor[index].name,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.blueAccent,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    investor[index].description,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        endIndent: 25,
                        indent: 108,
                        color: Color.fromARGB(255, 53, 53, 53),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
