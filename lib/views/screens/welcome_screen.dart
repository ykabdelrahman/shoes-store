import 'package:flutter/material.dart';
import 'package:itistore/constants.dart';
import 'package:itistore/views/screens/login_screen.dart';
import 'package:itistore/views/screens/signup_screen.dart';
import 'package:sizer/sizer.dart';
import '../widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
            Text(
              'Welcome to noNameStoreForNow',
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: 'Pacifico',
                color: Colors.grey,
              ),
            ),
            Image(
              image: const AssetImage('assets/images/store.png'),
              height: 30.h,
              width: 30.w,
            ),
            SizedBox(height: 4.h),
            CustomButton(
              text: 'LOGIN',
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
              textStyle: TextStyle(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2.h),
            CustomButton(
              text: 'SIGNUP',
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
              textStyle: TextStyle(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
