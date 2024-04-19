import 'package:firebase_auth/firebase_auth.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/widgets/CurvedNavigationBar.dart';
import 'package:store/widgets/Button/customButton.dart';
import 'package:store/widgets/google/validiation_text_field.dart';
import 'package:store/screens/Registration/forgetpass.dart';
import 'package:store/widgets/google/googleButton.dart';
import 'package:store/widgets/show_snack_bar.dart';

// ignore: must_be_immutable, camel_case_types
class login extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  login({Key? key}) : super(key: key);
  static String id = 'login';

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  String? email;
  String? pass;
  bool loading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: loading,
      child: Scaffold(
        backgroundColor: const Color(0xfffff8fa),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'assest/images/logo.png',
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              const Text(
                'Store',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomTextFormField(
                        show: false,
                        onChanged: (data) {
                          email = data;
                        },
                        hText: "Enter your email",
                        lText: 'Email',
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomTextFormField(
                        show: true,
                        onChanged: (data) {
                          pass = data;
                        },
                        hText: "Enter your Password",
                        lText: 'Password',
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return forget();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Forget password?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0x83000000),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              customButton(
                y: 0.06,
                x: 0.8,
                text: 'Login',
                color: const Color(0xfff56a82),
                onPressed: () async {
                  var auth = FirebaseAuth.instance;
                  if (formKey.currentState!.validate()) {
                    loading = true;
                    setState(() {});
                    try {
                      await loginUser(auth);
                      // ignore: use_build_context_synchronously
                      showSnackBar(context, 'success');
                      Navigator.push(
                        // ignore: use_build_context_synchronously
                        context,
                        MaterialPageRoute(builder: (context) => Bar()),
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'wrong-password') {
                        showSnackBar(
                            // ignore: use_build_context_synchronously
                            context,
                            'Wrong password provided for that user.');
                      } else if (e.code == 'user-not-found') {
                        showSnackBar(
                            // ignore: use_build_context_synchronously
                            context,
                            'No user found for that email.');
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
    );
  }

  Future<void> loginUser(FirebaseAuth auth) async {
    // ignore: unused_local_variable
    UserCredential user =
        await auth.signInWithEmailAndPassword(email: email!, password: pass!);
  }
}
