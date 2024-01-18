import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class JonathanApplyPage extends StatefulWidget {
  const JonathanApplyPage({Key? key});

  @override
  State<JonathanApplyPage> createState() => _JonathanApplyPageState();
}

class _JonathanApplyPageState extends State<JonathanApplyPage> {
  Map<String, String> fileNames = {
    'Proposal Bisnis': '',
    'Daftar Catalog': '',
    'Business Model Canvas': '',
    'Ajuan Modal': '',
  };
  PlatformFile? newFile;

  Map<String, bool?> fileUploadStatus = {
    'Proposal Bisnis': null,
    'Daftar Catalog': null,
    'Business Model Canvas': null,
    'Ajuan Modal': null,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Ajukan Investor',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Text(
              'Jonathan',
              style: GoogleFonts.montserrat(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
              ),
            ),
            Row(
              children: [
                Text(
                  'CFO BukaModal Indonesia',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                children: [
                  Expanded(
                    child: (Text(
                      'Form ini merupakan persyaratan yang harus diunggah dan divalidasi. Harap isi dengan benar dan perhatikan petunjuknya!',
                      softWrap: true,
                      style: GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // Build each section
            buildSection('Proposal Bisnis'),
            buildSection('Daftar Catalog'),
            buildSection('Business Model Canvas'),
            buildSection('Ajuan Modal'),

            const SizedBox(height: 30),

            // Submit
            InkWell(
              onTap: () async {},
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Submit',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //Add a variable to store selected file names for each section
  Map<String, String?> selectedFileNames = {};

// Build each section
  Widget buildSection(String sectionTitle) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sectionTitle,
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    if (newFile != null) {
                      openFile(newFile!);
                    }
                  },
                  child: Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(
                        selectedFileNames[sectionTitle] ?? '',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () async {
                // Replace this logic with your actual file upload logic
                final result = await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: ['jpg', 'jpeg', 'pdf', 'doc', 'png'],
                );

                // Open single file
                if (result == null) return;
                final file = result.files.first;

                // Update the selected file name
                selectedFileNames[sectionTitle] = file.name;

                // Update the fileUploadStatus to true
                setState(() {
                  fileUploadStatus[sectionTitle] = true;
                });

                // Save file permanently
                final newFile = await saveFilePermanently(file);

                print('From Path: ${file.path}');
                print('To Path: ${newFile.path}');

                // Call openFile after updating selectedFileNames and newFile
                openFile(file);

                print('Name: ${file.name}');
                print('Extension: ${file.extension}');

                // uploading file
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(8),
              ),
              child: Icon(
                fileUploadStatus[sectionTitle] == true
                    ? Icons.check
                    : Icons.add,
                color: fileUploadStatus[sectionTitle] == true
                    ? Colors.green
                    : Colors.grey,
              ),
            ),
          ],
        ),
        const Divider(
          color: Color.fromARGB(255, 76, 76, 76),
        ),
      ],
    );
  }

  Future<File> saveFilePermanently(PlatformFile file) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final newFile = File('${appStorage.path}/${file.name}');

    return File(file.path!).copy(newFile.path);
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
}
