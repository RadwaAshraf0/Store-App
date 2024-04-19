import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class customButton extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  customButton(
      {super.key,
      this.text,
      this.onPressed,
      this.color,
      required this.x,
      required this.y});
  final String? text;
  final Color? color;
  double? x;
  double? y;

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          color!,
        ),
      ),
      onPressed: onPressed!,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * y!,
        width: MediaQuery.of(context).size.width * x!,
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              color: Color(0xffffffff),
              fontFamily: "Pacifico",
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
