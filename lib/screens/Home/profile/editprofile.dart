// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:store/screens/Home/profile/profile.dart';
import 'package:store/widgets/Button/customButton.dart';
import 'package:store/widgets/customTextFaild.dart';

// ignore: camel_case_types
class editprofile extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  editprofile({Key? key}) : super(key: key);
  static String id = 'edit';

  @override
  State<editprofile> createState() => _editprofileState();
}

// ignore: camel_case_types
class _editprofileState extends State<editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage('assest/images/profile.jpeg'),
                radius: MediaQuery.of(context).size.width * 0.25,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.035),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.1 * MediaQuery.of(context).size.width),
              child: Column(
                children: [
                  customTextFaild(
                    Text: 'Radwa Ashraf',
                    labelText: 'Username',
                  ),
                  const SizedBox(height: 20),
                  customTextFaild(
                    Text: '+20 12xxxxxxxx',
                    labelText: 'Phone',
                  ),
                  const SizedBox(height: 20),
                  customTextFaild(
                    Text: 'radwaashraf516@gmail.com',
                    labelText: 'Email',
                  ),
                  const SizedBox(height: 20),
                  customTextFaild(
                    Text: '123456789',
                    labelText: 'Password',
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            customButton(
              x: 0.7,
              y: 0.07,
              color: const Color(0xfff56a82),
              text: 'Done',
              onPressed: () {
                Navigator.of(context).pop(profile());
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
