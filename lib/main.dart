import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store/screens/Home/cart.dart';
import 'package:store/screens/Home/category/casual.dart';
import 'package:store/screens/Home/category/category.dart';
import 'package:store/screens/Home/category/classic.dart';
import 'package:store/screens/Home/category/sport.dart';
import 'package:store/screens/Home/home.dart';
import 'package:store/screens/Home/profile/editprofile.dart';
import 'package:store/screens/Home/profile/profile.dart';
import 'package:store/screens/Home/setting.dart';
import 'package:store/screens/welcome.dart';
import 'package:store/screens/Onboarding/screen1.dart';
import 'package:store/screens/Onboarding/screen2.dart';
import 'package:store/screens/Onboarding/screen3.dart';
import 'package:store/screens/Registration/signin.dart';
import 'package:store/screens/Registration/login.dart';
import 'package:store/screens/Registration/createAcount.dart';
import 'package:store/screens/Registration/forgetpass.dart';
import 'package:store/screens/Registration/scode.dart';
import 'package:store/screens/Registration/newpass.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => welcome(),
        'FirstOnboarding': (context) => const FirstOnboarding(),
        'SecondOnboarding': (context) => const SecondOnboarding(),
        'ThirdOnboarding': (context) => const ThirdOnboarding(),
        'login': (context) => login(),
        'signin': (context) => signin(),
        'create': (context) => create(),
        'forget': (context) => forget(),
        'scode': (context) => scode(),
        'newpass': (context) => newpass(),
        'home': (context) => home(),
        'cart': (context) => cart(),
        'category': (context) => category(),
        'setting': (context) => setting(),
        'profile': (context) => profile(),
        'edit': (context) => editprofile(),
        'sport': (context) => sport(),
        'classic': (context) => classic(),
        'casual': (context) => casual(),
      },
    );
  }
}
