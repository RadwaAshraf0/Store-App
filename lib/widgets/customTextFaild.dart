// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class customTextFaild extends StatelessWidget {
  // ignore: non_constant_identifier_names
  customTextFaild({super.key, this.Text, this.labelText,this.hintText});

// ignore: non_constant_identifier_names
  String? Text;
  String? labelText;
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xff151515),
      autofocus: true,
      controller: TextEditingController(text: Text),
      decoration:  InputDecoration(
        labelText: labelText,
        hintText:hintText,
        enabledBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xfff56a82), width: 2.0),
        ),
        labelStyle: const TextStyle(
          color: Color(0xff151515),
        ),
      ),
    );
  }
}
