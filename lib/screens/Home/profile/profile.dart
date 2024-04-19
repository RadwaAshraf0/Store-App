// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:store/screens/Home/profile/editprofile.dart';
import 'package:store/widgets/google/profileTextFaild.dart';
// ignore: camel_case_types
class profile extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  profile({Key? key}) : super(key: key);
  static String id = 'profile';

  @override
  State<profile> createState() => _profileState();
}

// ignore: camel_case_types
class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: CircleAvatar(
                backgroundImage: AssetImage('assest/images/profile.jpeg'),
                radius: 90,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return editprofile();
                        },
                      ),
                    );
                  },
                  child: const Row(
                    children: [
                      Text(
                        'Edit',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0x83000000),
                        ),
                      ),
                      Icon(
                        Icons.edit,
                        color: Color(0x83000000),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ProfileTextField(label: 'Username', text: 'Radwa Ashraf'),
                  SizedBox(height: 20),
                  ProfileTextField(label: 'Phone', text: '+20 12xxxxxxxx'),
                  SizedBox(height: 20),
                  ProfileTextField(
                      label: 'Email', text: 'radwaashraf516@gmail.com'),
                  SizedBox(height: 20),
                  ProfileTextField(label: 'Password', text: '123456789'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

