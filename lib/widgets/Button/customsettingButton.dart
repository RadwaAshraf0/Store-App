// ignore: file_names, depend_on_referenced_packages
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class customElevatedButton extends StatelessWidget {
  customElevatedButton({super.key, this.onPressed, this.text, this.icon});
  // ignore: non_constant_identifier_names
  final IconData? icon;
  final Function()? onPressed;
  String? text;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // ignore: dead_code
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.03 * screenWidth),
      child: Center(
        child: SizedBox(
          height: 0.1 * screenWidth, // Adjust height
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xcef56a82),
              ),
            ),
            onPressed: onPressed!,
            child: Row(
              children: [
                Icon(
                  icon! as IconData?,
                  color: const Color(0xfffff8fa),
                  size: 0.08 * screenWidth, // Adjust icon size
                ),
                SizedBox(width: 0.05 * screenWidth),
                Text(
                  text!,
                  style: TextStyle(
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.bold,
                    fontSize: 0.05 * screenWidth, // Adjust font size
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
