// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

// ignore: camel_case_types
class cart extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  cart({Key? key}) : super(key: key);
  static String id = 'cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.08,
                bottom: MediaQuery.of(context).size.height * 0.02,
              ),
              child: Text(
                'Your Cart',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: MediaQuery.of(context).size.width * 0.08,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xfff56a82),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Image.asset(
                  'assest/images/cart.png',
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
