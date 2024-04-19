import 'package:flutter/material.dart';
import 'package:store/widgets/onbording.dart';
import 'package:store/screens/Onboarding/screen3.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({super.key});
  static String id = 'SecondOnboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        image: ('assest/images/w2.png'),
        text1: 'Coupons, promo codes, and sales galore',
        color: const Color(0xfffff8fa),
        color2: const Color(0xffbf5061),
        color3: const Color(0xfff4c7c7),
        color4: const Color(0xffbf5061),
        onpressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ThirdOnboarding();
          }));
        },
      ),
    );
  }
}
