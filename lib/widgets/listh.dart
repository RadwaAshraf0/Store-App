import 'package:flutter/material.dart';

// ignore: must_be_immutable
class list extends StatelessWidget {
  list({
    super.key,
    this.text1,
    required this.onTap,
  });

  String? text1;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: MaterialStateProperty.all<Color>(
        const Color(0x9bf7879a),
      ),
      onTap: onTap,
      child: Container(
        constraints:
            const BoxConstraints(minWidth: 110), // Minimum width constraint
        decoration: BoxDecoration(
          color: const Color(0x84aeaeae),
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(
            vertical: 8, horizontal: 16), // Adjust padding
        child: Center(
          child: Text(
            text1!,
            style: const TextStyle(
              color: Color(0xff000000),
              fontFamily: "Pacifico",
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
