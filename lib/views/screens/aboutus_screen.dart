import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itistore/constants.dart';
import 'package:sizer/sizer.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const Text(
            'About Us',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Center(
                child: Text(
                  'About Our App',
                  style: GoogleFonts.lora(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                '''
Welcome to the Happy Walking Store app, your ultimate destination for finding the latest and trendiest shoes for all occasions.
Explore a wide range of shoes for men, women, and children options.
Browse through the app effortlessly with our intuitive and user-friendly interface
We hope you enjoy using our app and find the perfect pair of shoes that suits your style and needs. Happy shopping!
            ''',
                style: TextStyle(
                  fontSize: 12.sp,
                  letterSpacing: 2,
                  height: .23.h,
                ),
              ),
            ],
          ),
        ));
  }
}
