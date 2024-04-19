// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:store/screens/Registration/newpass.dart';
import 'package:store/widgets/Button/customButton.dart';
import 'package:timer_count_down/timer_count_down.dart';

class scode extends StatelessWidget {
  scode({Key? key}) : super(key: key);
  static String id = 'scode';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff8fa),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.07),
              child: Image.asset(
                'assest/images/messaging.png',
                height: MediaQuery.of(context).size.height * 0.25,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.001),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Text(
                'We have sent the OTP verification code to your Email OR Telephone. Check and enter the code below.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            OtpTextField(
              numberOfFields: 5,
              cursorColor: Colors.black,
              focusedBorderColor: const Color(0xfff56a82),
              autoFocus: true,
              borderWidth: 3,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  },
                );
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Center(
              child: Text(
                'Didn\'t receive the code?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Resend code in  ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
                Countdown(
                  seconds: 30,
                  build: (BuildContext context, double time) =>
                      Text(time.toString()),
                  interval: const Duration(milliseconds: 500),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            customButton(
              x: 0.7,
              y: 0.07,
              color: const Color(0xfff56a82),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => newpass()),
                );
              },
              text: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}
