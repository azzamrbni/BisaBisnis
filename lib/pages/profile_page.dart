import 'package:bisabisnis/pages/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserDataField extends StatefulWidget {
  final String label;
  final String value;
  final Function onTap;

  const UserDataField(
      {super.key,
      required this.label,
      required this.value,
      required this.onTap});

  @override
  State<UserDataField> createState() => _UserDataFieldState();
}

// User Call
final currentUser = FirebaseAuth.instance.currentUser!;

// Document IDs
List<String> docIDs = [];

// get docIDs
Future<void> getDocId() async {
  await FirebaseFirestore.instance.collection('users').get().then(
        (snapshot) => snapshot.docs.forEach((document) {
          docIDs.add(document.reference.id);
        }),
      );
}

// Get user data
Future<Map<String, dynamic>> getUserData(userId) async {
  DocumentSnapshot userSnapshot =
      await FirebaseFirestore.instance.collection('users').doc(userId).get();

  if (userSnapshot.exists) {
    return userSnapshot.data() as Map<String, dynamic>;
  } else {
    // Return an empty map if the user doesn't exist
    return {};
  }
}

class _UserDataFieldState extends State<UserDataField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => widget.onTap(widget.label),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.label,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      widget.value,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 21,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 66, 65, 65),
            indent: 0,
            endIndent: 0,
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // all users
  final usersCollection = FirebaseFirestore.instance.collection('users');

  // edit field
  Future<void> editField(String field) async {
    String lowercaseField = field.toLowerCase();
    String newValue = "";
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color.fromARGB(255, 45, 45, 45),
        title: Text(
          'Edit $lowercaseField',
          style: GoogleFonts.montserrat(
            color: Colors.white,
          ),
        ),
        content: field.toLowerCase() == 'age'
            ? SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.montserrat(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Enter new $lowercaseField',
                        hintStyle: GoogleFonts.montserrat(
                          color: Colors.grey,
                        ),
                      ),
                      onChanged: (value) => newValue = value,
                    ),
                  ],
                ),
              )
            : TextField(
                autofocus: true,
                style: GoogleFonts.montserrat(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Enter new $lowercaseField',
                  hintStyle: GoogleFonts.montserrat(
                    color: Colors.grey,
                  ),
                ),
                onChanged: (value) => {newValue = value},
              ),
        actions: [
          //cancel button
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: GoogleFonts.montserrat(),
            ),
          ),

          // save button
          TextButton(
            onPressed: () => Navigator.of(context).pop(newValue),
            child: Text(
              'Save',
              style: GoogleFonts.montserrat(),
            ),
          ),
        ],
      ),
    );

    // update in firestore
    if (newValue.trim().isNotEmpty) {
      //only updates if there is something in the textfield
      await usersCollection
          .doc(currentUser.uid)
          .update({lowercaseField: newValue});
    }
  }

  // Logout Function
  bool showLogInPage = false;

  void toggleScreens() {
    if (mounted) {
      setState(() {
        showLogInPage = showLogInPage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(1, 26, 26, 26),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: FutureBuilder(
          future: getDocId(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                String userId = docIDs.isNotEmpty ? docIDs[0] : '';
                return FutureBuilder<Map<String, dynamic>>(
                  future: getUserData(userId),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        Map<String, dynamic> userData = snapshot.data ?? {};

                        String firstName = userData['first name'] ?? 'No data';
                        String lastName = userData['last name'] ?? 'No data';
                        String email = userData['email'] ?? 'No data';
                        String age = (userData['age'] ?? 'No data').toString();

                        return SingleChildScrollView(
                          child: SizedBox(
                            height: 1200,
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.person_2_sharp,
                                  size: 120,
                                  color: Colors.grey,
                                ),
                                Text(
                                  firstName,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24),
                                ),
                                const SizedBox(height: 20),

                                //display box
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height: 395,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 45, 45, 45),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: [
                                        // Display user data
                                        UserDataField(
                                          label: 'Name',
                                          value: '$firstName $lastName',
                                          onTap: editField,
                                        ),
                                        UserDataField(
                                          label: 'No. HP',
                                          value: '-',
                                          onTap: editField,
                                        ),
                                        UserDataField(
                                          label: 'Email',
                                          value: email,
                                          onTap: editField,
                                        ),
                                        UserDataField(
                                          label: 'Membership Status',
                                          value: 'Elite',
                                          onTap: editField,
                                        ),
                                        UserDataField(
                                          label: 'Age',
                                          value: age,
                                          onTap: editField,
                                        ),
                                        UserDataField(
                                          label: 'Tanggal Lahir',
                                          value: 'add',
                                          onTap: editField,
                                        ),
                                        UserDataField(
                                          label: 'Jenis Kelamin',
                                          value: '-',
                                          onTap: editField,
                                        ),

                                        // Log Out button and other UI elements
                                        // ...
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                // Log Out
                                MaterialButton(
                                  minWidth: 140,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  onPressed: () async {
                                    await FirebaseAuth.instance.signOut();

                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LogInPage(
                                            showSignUpPage: toggleScreens),
                                      ),
                                    );
                                  },
                                  color: Colors.blue,
                                  child: Text(
                                    "Log Out",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 30),
                              ],
                            ),
                          ),
                        );
                      }
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                );
              }
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
