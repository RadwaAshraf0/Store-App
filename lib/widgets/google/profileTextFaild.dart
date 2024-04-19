// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
class ProfileTextField extends StatelessWidget {
  final String label;
  final String text;

  const ProfileTextField({
    Key? key,
    required this.label,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth > 400 ? 400 : constraints.maxWidth,
          child: TextField(
            enabled: false,
            controller: TextEditingController(text: text),
            decoration: InputDecoration(
              labelText: label,
              border: const OutlineInputBorder(),
            ),
          ),
        );
      },
    );
  }
}
