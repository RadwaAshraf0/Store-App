// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:store/widgets/categorylist.dart';
import 'package:store/screens/Home/category/casual.dart';
import 'package:store/screens/Home/category/classic.dart';
import 'package:store/screens/Home/category/formal.dart';
import 'package:store/screens/Home/category/sport.dart';

// ignore: camel_case_types
class category extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  category({Key? key}) : super(key: key);
  static String id = 'category';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Categorry",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 60),
            categorylist(
              image: 'assest/images/Casualclothes.png',
              text1: 'Casual',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => casual()),
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            categorylist(
              image: 'assest/images/Classicclothing.png',
              text1: 'Classic',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => classic()),
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            categorylist(
              image: 'assest/images/Formalclothing.png',
              text1: 'Formal',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => formal()),
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            categorylist(
              image: 'assest/images/sportsclothes.png',
              text1: 'sports',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sport()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
