// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:store/screens/Registration/scode.dart';
import 'package:store/widgets/Button/customButton.dart';
import 'package:store/widgets/customTextFaild.dart';

// ignore: camel_case_types
class forget extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  forget({Key? key}) : super(key: key);
  static String id = 'forget';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              Image.asset(
                'assest/images/logo.png',
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Store',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25.0),
              customTextFaild(
                hintText: "Enter your email OR Your phone number",
              ),
              const SizedBox(height: 7),
              const Text(
                "We will send you a code to set a new password",
                style: TextStyle(
                  color: Color(0xe7151515),
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 25),
              customButton(
                x: 0.7,
                y: 0.07,
                text: 'Send',
                color: const Color(0xfff56a82),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => scode()),
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
