import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:itistore/views/screens/botttom_nav_screen.dart';
import 'package:itistore/views/screens/home_screen.dart';
import 'package:itistore/views/screens/signup_screen.dart';
import 'package:sizer/sizer.dart';
import '../../constants.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 170,
                height: 170,
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
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
                height: 8.h,
                width: 100.w,
                text: 'Log In',
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavBar(),
                        ));
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        showSnackBar(context, 'No user found for that email.');
                      } else if (e.code == 'wrong-password') {
                        showSnackBar(
                            context, 'Wrong password provided for that user.');
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
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (!Navigator.canPop(context)) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ));
                      } else {
                        Navigator.pop(context);
                      }
                    },
                    child: const Text(
                      ' Sign up',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ],
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
