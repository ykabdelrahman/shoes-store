import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itistore/constants.dart';
import 'package:itistore/views/screens/login_screen.dart';
import 'package:itistore/views/screens/signup_screen.dart';
import 'package:sizer/sizer.dart';
import '../widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(),
            Text(
              'Welcome to Happy Walking store',
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.sp,
                ),
              ),
            ),
            Image(
              image: const AssetImage('assets/images/logoo.jpeg'),
              height: 30.h,
              width: 30.w,
            ),
            SizedBox(height: 4.h),
            CustomButton(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
              },
              height: 8.h,
              width: 100.w,
              backgroundColor: kPrimaryColor,
              borderRadius: BorderRadius.circular(6),
              splashColor: Colors.purple,
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 2.h),
            CustomButton(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ));
              },
              height: 8.h,
              width: 100.w,
              backgroundColor: kPrimaryColor,
              borderRadius: BorderRadius.circular(6),
              splashColor: Colors.purple,
              child: Text(
                'SIGNUP',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
