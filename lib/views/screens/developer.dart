import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itistore/views/widgets/custom_text_developer.dart';

class developerscreen extends StatefulWidget {
  const developerscreen({super.key});

  @override
  State<developerscreen> createState() => _developerscreenState();
}

class _developerscreenState extends State<developerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'developers',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
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
              CustomTextWidget(text: 'salma salah'),
              CustomTextWidget(text: 'kafr elshyk university'),
              CustomTextWidget(
                text: 'informatin technologey department',
              ),
              CustomTextWidget(text: 'trainee at iti'),
              Divider(
                color: Colors.purple,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextWidget(text: 'salma salah'),
              CustomTextWidget(text: 'kafr elshyk university'),
              Divider(
                color: Colors.purple,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextWidget(text: 'salma salah'),
              CustomTextWidget(text: 'kafr elshyk university'),
              Divider(
                color: Colors.purple,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextWidget(text: 'salma salah'),
              CustomTextWidget(text: 'kafr elshyk university'),
              CustomTextWidget(
                text: 'informatin technologey department',
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
