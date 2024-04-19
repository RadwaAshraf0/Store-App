import 'package:flutter/material.dart';

class categorylist extends StatelessWidget {
  categorylist({
    this.text1,
    this.image,
    required this.onTap,
  });

  final String? image;
  final String? text1;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: MaterialStateProperty.all<Color>(
        const Color(0x9bf7879a),
      ),
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0x94f56a82),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Image.asset(
                  image!,
                  height: 70,
                  width: 50,
                ),
              ),
              const SizedBox(
                width: 20, // Adjust the width between image and text
              ),
              Expanded(
                child: Text(
                  text1!,
                  style: const TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.bold,
                    fontSize: 20, // Adjust font size according to your need
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10), // Adjust the padding
                child: Icon(
                  Icons.arrow_right,
                  color: Color(0xffffffff),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
