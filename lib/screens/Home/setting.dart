// ignore: unnecessary_import
import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:store/screens/Registration/signin.dart';
import 'package:store/widgets/Button/customsettingButton.dart';

// ignore: camel_case_types
class setting extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  setting({Key? key}) : super(key: key);
  static String id = 'setting';

  @override
  State<setting> createState() => _settingState();
}

// ignore: camel_case_types
class _settingState extends State<setting> {
  bool showDropdownContainer = false;
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 70),
                child: Text(
                  "Setting",
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 0.1 * screenWidth, // Adjust font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.03 * screenWidth),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xcef56a82),
                    borderRadius: BorderRadius.circular(
                        20.0), // Set the curve radius here
                  ),
                  height: 0.1 * screenWidth, // Adjust height
                  width: double.infinity,

                  child: Row(
                    children: [
                      SizedBox(width: 0.05 * screenWidth), // Adjust width
                      Icon(
                        Icons.notifications,
                        color: const Color(0xfffff8fa),
                        size: 0.08 * screenWidth, // Adjust icon size
                      ),
                      SizedBox(width: 0.05 * screenWidth),
                      Text(
                        "Notifications",
                        style: TextStyle(
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                          fontSize: 0.05 * screenWidth, // Adjust font size
                        ),
                      ),
                      const Spacer(), // Use Spacer instead of SizedBox
                      Switch(
                        value: selected,
                        activeColor: const Color(0xffffffff),
                        onChanged: (bool value) {
                          setState(() {
                            selected = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 0.05 * screenWidth),
              customElevatedButton(
                text: 'language',
                onPressed: () {},
                icon: Icons.language,
              ),
              SizedBox(height: 0.05 * screenWidth), // Adjust height
              Column(
                children: [
                  customElevatedButton(
                    onPressed: () {
                      setState(() {
                        showDropdownContainer = !showDropdownContainer;
                      });
                    },
                    icon: Icons.help,
                    text: 'Help',
                  ),
                ],
              ),

              SizedBox(height: 0.02 * screenWidth), // Adjust height
              Visibility(
                visible: showDropdownContainer,
                child: Container(
                  padding: EdgeInsets.all(0.04 * screenWidth),
                  color: Colors.grey[200],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Welcome to the online shopping application!\nWe would like to give you some preparation for an enjoyable experience.\nBefore that, make sure you have a strong electronic connection and write off any uploading or downloading problems. Hide a personal account using your email address and a strong password. This step will help you track your orders and handle special functions for your users.Search section or browse various different categories on the products you need. You can also use the categories and brands you want to explore, and add the products you want to buy to your shopping cart. You can easily modify quantities and remove products before final payment",
                        style: TextStyle(
                            fontSize: 0.04 * screenWidth), // Adjust font size
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 0.17 * screenWidth), // Adjust height
              customElevatedButton(
                onPressed: () async {
                  var auth = FirebaseAuth.instance;
                  auth.signOut();
                  GoogleSignIn googleSignIn = GoogleSignIn();
                  googleSignIn.disconnect();
                  await FirebaseAuth.instance.signOut();
                  Navigator.push(
                    // ignore: use_build_context_synchronously
                    context,
                    MaterialPageRoute(builder: (context) => signin()),
                  );
                },
                icon: Icons.logout,
                text: 'log Out',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
