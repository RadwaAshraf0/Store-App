// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
CustomTextFormField({super.key, this.onChanged,this.hText,this.lText,required this.show});
Function(String)?onChanged;
String? hText;
String? lText;
bool show;
  @override
  Widget build(BuildContext context) {
    return TextFormField( onChanged: onChanged,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Field is required';
                        }
                        return null;
                      },
                      obscureText:show,
                        autofocus: true,
                        cursorColor: const Color(0xff151515),
                        decoration:  InputDecoration(
                          hintText:hText ,
                          labelText: lText,
                          enabledBorder: const OutlineInputBorder(),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xfff56a82), width: 2.0),
                          ),
                          labelStyle: const TextStyle(
                            color: Color(0xff151515),
                            fontSize: 20,
                          ),
                        ),);
  }
}

                       
                      