import 'package:flutter/material.dart';
import 'package:store/widgets/onbording.dart';
import 'package:store/screens/Registration/signin.dart';

class ThirdOnboarding extends StatelessWidget {
  const ThirdOnboarding({super.key});
  static String id = 'ThirdOnboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        image: ('assest/images/w3.png'),
        text1: 'World at your fingertips, perfect outfit just a search away.',
        color: const Color(0xfffff8fa),
        color2: const Color(0xffbf5061),
        color3: const Color(0xffbf5061),
        color4: const Color(0xfff4c7c7),
        onpressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return signin();
          }));
        },
      ),
    );
  }
}
