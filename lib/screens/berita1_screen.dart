import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Berita1Screen extends StatefulWidget {
  @override
  State<Berita1Screen> createState() => _Berita1ScreenState();
}

class _Berita1ScreenState extends State<Berita1Screen> {
  bool isVideosSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "BeritaBisnis",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Text(
              "Lewat Acara ini, BRI Tunjukan Komitmen dalam Perkuat Desa",
              style: GoogleFonts.montserrat(
                wordSpacing: 1,
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white54,
                image: DecorationImage(
                    image: AssetImage("images/Berita1.jpeg"), fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Jakarta, CNBC Indonesia - PT Bank Rakyat Indonesia (Persero) Tbk atau BRI mengapresiasi desa - desa yang dinilai aktif bergerak maju lewat gelaran Nugraha Karya Desa BRILiaN 2023 pada tanggal 9 - 10 Januari 2024 di Jakarta.",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Nugraha Karya Desa BRILiaN merupakan event tahunan yang diselenggarakan oleh BRI sebagai rangkaian program Desa BRILiaN yang fokus pada pengembangan empat aspek.",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Pertama, BUMDesa sebagai motor ekonomi desa. Kedua, digitalisasi dalam implementasi produk dan aktivitas di desa. Ketiga, sustainability yakni ketangguhan dan kontinuitas membangun desa. Keempat, inovasi guna mendorong desa menjadi kreatif.",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Direktur Utama BRI Sunarso mengungkapkan bahwa program Desa BRILian merupakan upaya nyata BRI dalam mendukung Pemerintah dalam meningkatkan ketahanan ekonomi dengan memberdayakan masyarakat pedesaan melalui peningkatan kapasitas, pelatihan bisnis, literasi digital, dan pembangunan berkelanjutan.",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Text(
              '"Melayani dan memberdayakan UMKM bukan hanya soal bisnis, tapi yang lebih penting lagi adalah menghadirkan kesejahteraan sosial. Semoga konsep seperti Desa BRILian ini tidak hanya dapat diimplementasikan di Indonesia, tapi juga di negara lainnya", ujar Sunarso dalam keterangan resmi, Senin (8/1/2024).',
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Program Desa BRILiaN sendiri telah memasuki tahun keempat. Desa BRILiaN merupakan program inkubasi desa yang bertujuan untuk menghasilkan role model dalam pengembangan desa. Hingga tahun 2023, program tersebut telah diikuti sebanyak 3.178 desa yang aktif berinisiatif serta berkomitmen maju melalui program-program yang telah direncanakan.',
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Objek pemberdayaan Desa BRILiaN sendiri meliputi perangkat desa (kepala desa), pengurus BUMDesa, Badan Permusyawaratan Desa, pelaku usaha desa, serta pegiat produk unggulan kawasan perdesaan (Prukades).',
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
