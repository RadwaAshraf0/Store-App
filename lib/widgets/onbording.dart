// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:store/screens/Registration/signin.dart';

class Onboarding extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Onboarding({
    Key? key,
    this.image,
    this.text1,
    this.color,
    this.color2,
    this.color3,
    this.color4,
    this.onpressed,
  });

  final String? image;
  final String? text1;
  final Color? color;
  final Color? color2;
  final Color? color3;
  final Color? color4;
  final Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: Column(
              children: [
                Image.asset(
                  image!,
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: Center(
                    child: Text(
                      text1!,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Pacifico",
                        fontSize: MediaQuery.of(context).size.width * 0.06,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1
                      // left: MediaQuery.of(context).size.width * 0.05,
                      // bottom: MediaQuery.of(context).size.height * 0.02,
                      // top: MediaQuery.of(context).size.height * 0.025
                      ),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signin()),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.05),
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              color: const Color(0xff000000),
                              fontFamily: "Pacifico",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      Icon(
                        Icons.circle,
                        color: color2!,
                        size: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Icon(
                        Icons.circle,
                        color: color3!,
                        size: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Icon(
                        Icons.circle,
                        color: color4!,
                        size: MediaQuery.of(context).size.width * 0.03,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.18,
                      ),
                      IconButton(
                        onPressed: onpressed!,
                        icon: Icon(Icons.arrow_forward,
                            color: const Color(0xff2f1f21),
                            size: MediaQuery.of(context).size.width * 0.07),
                      ),
                    ],
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
