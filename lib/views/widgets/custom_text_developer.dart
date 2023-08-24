import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;

  const CustomTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lora(
        textStyle: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
