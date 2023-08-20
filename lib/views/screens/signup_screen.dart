import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:itistore/views/screens/login_screen.dart';
import 'package:sizer/sizer.dart';
import '../../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text('Sign Up',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.grey,
                        )),
                  ],
                ),
                SizedBox(height: 8.h),
                CustomTextFormField(
                  lableText: 'Email',
                  iconn: Icons.email,
                  textStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  textType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: validateEmail,
                ),
                SizedBox(height: 3.h),
                CustomTextFormField(
                  lableText: 'Password',
                  hideText: true,
                  iconn: Icons.lock,
                  textStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  textType: TextInputType.visiblePassword,
                  controller: passwordController,
                  validator: validatePassword,
                ),
                SizedBox(height: 8.h),
                CustomButton(
                  borderRadius: BorderRadius.circular(6),
                  backgroundColor: kPrimaryColor,
                  splashColor: Colors.purple,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                  ),
                  height: 8.h,
                  width: 100.w,
                  text: 'Sign Up',
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      try {
                        await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          showSnackBar(
                              context, 'The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          showSnackBar(context,
                              'The account already exists for that email.');
                        } else {
                          showSnackBar(context, e.message.toString());
                        }
                      }
                    }
                  },
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.sp,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (!Navigator.canPop(context)) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        } else {
                          Navigator.pop(context);
                        }
                      },
                      child: Text(
                        ' Log In',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 10.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? validateEmail(value) {
    if (value == null || value.isEmpty) {
      return 'Email Address is required.';
    }
    String pattern = r'\w+@\w+\.\w+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Invalid Email Address format.';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    if (value.length < 8) {
      return 'Must be more than 8 charater';
    }
    return null;
  }
}

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: kPrimaryColor,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(24),
      duration: const Duration(seconds: 1, milliseconds: 50),
    ),
  );
}
