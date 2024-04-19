 import 'package:flutter/material.dart';
import 'package:store/widgets/google/googleAuth.dart';

// ignore: camel_case_types
class googleButton extends StatelessWidget {
  const googleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xc4fff9f9),
                    ),
                  ),
                  onPressed: () {
                      signWithGoogle(context);
                                
                                'Sign in with Google';
                     
                  },
                  child: SizedBox(
                    height:MediaQuery.of(context).size.height * 0.06,

                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assest/images/google.png',
                            height: 30,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Google',
                            style: TextStyle(
                              color: Color(0xfff56a82),
                              fontFamily: "Pacifico",
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
  }
}