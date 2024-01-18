import "package:flutter/material.dart";

class MembershipModel {
  String name;
  String imagePath;
  Color boxColor;
  double height;
  String title_desc1;
  String desc1;
  String title_desc2;
  String desc2;
  String? title_desc3;
  String? desc3;
  String? title_desc4;
  String? desc4;
  String price;
  IconData? iconData1;
  IconData? iconData2;
  IconData? iconData3;
  IconData? iconData4;

  MembershipModel({
    required this.name,
    required this.imagePath,
    required this.height,
    required this.title_desc1,
    required this.desc1,
    required this.title_desc2,
    required this.desc2,
    this.title_desc3,
    this.desc3,
    this.title_desc4,
    this.desc4,
    required this.boxColor,
    required this.price,
    required this.iconData1,
    required this.iconData2,
    this.iconData3,
    this.iconData4,
  });

  static List<MembershipModel> getMembership() {
    List<MembershipModel> membership = [];

    membership.add(
      MembershipModel(
        name: 'Starter Package',
        imagePath: './assets/icons/bronze.png',
        height: 250,
        iconData1: Icons.check_circle_outline_rounded,
        title_desc1: 'BisaKelas',
        desc1: 'Modul video belajar full all category',
        iconData2: Icons.check_circle_outline_rounded,
        title_desc2: 'BisaBerita',
        desc2: 'Artikel seputar bisnis mingguan',
        price: 'Rp300.000',
        boxColor: Color.fromARGB(255, 37, 37, 37),
      ),
    );

    membership.add(
      MembershipModel(
        name: 'Advance Package',
        imagePath: './assets/icons/silver.png',
        height: 255,
        iconData1: Icons.check_circle_outline_rounded,
        title_desc1: 'BisaKelas',
        desc1: 'Modul video belajar full all category',
        iconData2: Icons.check_circle_outline_rounded,
        title_desc2: 'BisaBerita',
        desc2: 'Artikel seputar bisnis mingguan',
        iconData3: Icons.check_circle_outline_rounded,
        title_desc3: 'BisaModal',
        desc3: 'Cari dan pengajuan dana investor',
        price: 'Rp400.000',
        boxColor: Color.fromARGB(255, 13, 12, 48),
      ),
    );

    membership.add(
      MembershipModel(
          name: 'Elite Package',
          imagePath: 'assets/icons/platinum.png',
          height: 330,
          boxColor: Color.fromARGB(255, 32, 10, 50),
          iconData1: Icons.check_circle_outline_rounded,
          title_desc1: 'BisaKelas',
          desc1: 'Modul video belajar full all category',
          iconData2: Icons.check_circle_outline_rounded,
          title_desc2: 'BisaBerita',
          desc2: 'Artikel seputar bisnis mingguan',
          iconData3: Icons.check_circle_outline_rounded,
          title_desc3: 'BisaModal',
          desc3: 'Cari dan pengajuan dana investor',
          iconData4: Icons.check_circle_outline_rounded,
          title_desc4: 'BisaMentor',
          desc4: 'Bimbingan eksklusif dengan\npengusaha sukses',
          price: 'Rp500.000'),
    );
    return membership;
  }
}
