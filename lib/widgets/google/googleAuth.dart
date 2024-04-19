// ignore: file_names
import 'package:firebase_auth/firebase_auth.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:store/widgets/CurvedNavigationBar.dart';

Future<void> signWithGoogle(context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
if(googleUser==null){
return;
}
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bar()),
                    );
      // Once signed in, return the UserCredential

      await FirebaseAuth.instance.signInWithCredential(credential);
       

      
    } catch (e) {
      print(e);
      throw Exception('Something Went Wrong');
    }
  }