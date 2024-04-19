// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:store/widgets/CurvedNavigationBar.dart';
import 'package:store/widgets/Button/customButton.dart';
import 'package:store/widgets/customTextFaild.dart';

// ignore: camel_case_types
class newpass extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  newpass({Key? key}) : super(key: key);
  static String id = 'newpass';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            Image.asset(
              'assest/images/logo.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Text(
              'Store',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: MediaQuery.of(context).size.width * 0.1,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Create New Password',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.09),
              child: Text(
                'Enter your new password. if you forgot it. then you have to do forgot password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: customTextFaild(
                hintText: "Enter your New password",
                labelText: 'New Password',
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: customTextFaild(
                hintText: "Confirm your new password",
                labelText: 'Confirm Password',
              ),
            ),
            const SizedBox(height: 40),
            customButton(
              x: 0.7,
              y: 0.07,
              color: const Color(0xfff56a82),
              text: 'Reset Password',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bar()),
                );
                // Perform your actions here
              },
            ),
          ],
        ),
      ),
    );
  }
}
