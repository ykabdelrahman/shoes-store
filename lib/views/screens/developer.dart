import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itistore/views/widgets/custom_text_developer.dart';
import 'package:sizer/sizer.dart';

class DevelopersScreen extends StatefulWidget {
  const DevelopersScreen({super.key});

  @override
  State<DevelopersScreen> createState() => _DevelopersScreenState();
}

class _DevelopersScreenState extends State<DevelopersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Developers',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "OUR TEAM MEMBERS:",
              style: GoogleFonts.aladin(
                textStyle: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: Colors.purple,
                    letterSpacing: 4),
              ),
            ),
            const CustomTextWidget(text: 'Salma Salah'),
            const CustomTextWidget(text: 'kafr elshyk university'),
            const CustomTextWidget(
              text: 'information technology department',
            ),
            const Divider(
              color: Colors.purple,
            ),
            const CustomTextWidget(text: 'Rahma Khaled'),
            const CustomTextWidget(text: 'MET Academy'),
            const CustomTextWidget(
              text: 'Computer science department',
            ),
            const Divider(
              color: Colors.purple,
            ),
            const CustomTextWidget(text: 'Sara El-saeed'),
            const CustomTextWidget(text: 'FCIS Mansoura university'),
            const CustomTextWidget(
              text: 'Medical informatics department',
            ),
            const Divider(
              color: Colors.purple,
            ),
            const CustomTextWidget(text: 'Abdelrahman ElHussein'),
            const CustomTextWidget(text: 'FCIS Mansoura University'),
            const CustomTextWidget(
              text: 'information technology department',
            ),
            SizedBox(height: 3.h),
          ],
        ),
      ),
    );
  }
}
