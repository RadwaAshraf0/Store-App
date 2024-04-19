// ignore: file_names
// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/widgets/CurvedNavigationBar.dart';
import 'package:store/widgets/Button/customButton.dart';
import 'package:store/widgets/google/validiation_text_field.dart';
import 'package:store/widgets/google/googleButton.dart';
import 'package:store/widgets/show_snack_bar.dart';

// ignore: must_be_immutable, camel_case_types
class create extends StatefulWidget {
  const create({Key? key}) : super(key: key);
  static String id = 'create';

  @override
  State<create> createState() => _createState();
}

// ignore: camel_case_types
class _createState extends State<create> {
  String? email;
  String? pass;
  String? name;
  bool loading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: loading,
      child: Scaffold(
        backgroundColor: const Color(0xfffff8fa),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.06),
                  child: Image.asset(
                    'assest/images/logo.png',
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                ),
                const Text(
                  'Store',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: CustomTextFormField(
                          onChanged: (data) {
                            name = data;
                          },
                          hText: "Enter your UserName",
                          lText: 'UserName',
                          show: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: CustomTextFormField(
                          show: false,
                          onChanged: (data) {
                            email = data;
                          },
                          hText: "Enter your email",
                          lText: 'Email',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: CustomTextFormField(
                          onChanged: (data) {
                            pass = data;
                          },
                          hText: "Enter your password",
                          lText: 'Password',
                          show: true,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
               customButton(
                y: 0.06,
                x: 0.8,
                  text: 'Registration',
                  color: const Color(0xfff56a82),
                  onPressed: () async {
                    var auth = FirebaseAuth.instance;
                    if (formKey.currentState!.validate()) {
                      loading = true;
                      setState(() {});
                      try {
                        await registrationUser(auth);
                        showSnackBar(context, 'success');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Bar()),
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          showSnackBar(
                              context, 'your password provided is too weak');
                        } else if (e.code == 'email-already-in-use') {
                          showSnackBar(context, 'the account already exists');
                        }
                      } catch (e) {
                        // ignore: avoid_print
                        print(e);
                      }
                      loading = false;
                      setState(() {});
                    } else {}
                  },
                ),
                const SizedBox(height: 10),
                // ignore: prefer_const_constructors
                googleButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> registrationUser(FirebaseAuth auth) async {
    // ignore: unused_local_variable
    UserCredential user = await auth.createUserWithEmailAndPassword(
        email: email!, password: pass!);
  }
}
