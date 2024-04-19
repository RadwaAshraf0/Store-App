import 'package:flutter/material.dart';
import 'package:store/screens/Onboarding/screen2.dart';
import 'package:store/widgets/onbording.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});
  static String id = 'FirstOnboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        image: ('assest/images/w1.png'),
        text1: 'Find anything you can imagine, all in one place.',
        color: const Color(0xfffff8fa),
        color2: const Color(0xfff4c7c7),
        color3: const Color(0xffbf5061),
        color4: const Color(0xffbf5061),
        onpressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SecondOnboarding();
          }));
        },
      ),
    );
  }
}
