import 'package:flutter/material.dart';
import 'package:store/screens/Registration/createAcount.dart';
import 'package:store/screens/Registration/login.dart';
import 'package:store/widgets/Button/customButton.dart';

// ignore: camel_case_types
class signin extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  signin({Key? key}) : super(key: key);
  static String id = 'signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Image.asset(
                'assest/images/logo.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Text(
                'Store',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: MediaQuery.of(context).size.height * 0.07,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: customButton(
                  y: 0.08,
                  x: 0.6,
                  text: 'Create Account',
                  color: const Color(0xfff56a82),
                  onPressed: () {
                    Navigator.push(
                      context,
                      // ignore: prefer_const_constructors
                      MaterialPageRoute(builder: (context) => create()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: customButton(
                  y: 0.08,
                  x: 0.6,
                  text: 'Login',
                  color: const Color(0x81f56a82),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
