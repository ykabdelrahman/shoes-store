import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itistore/views/widgets/custom_text_developer.dart';

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
              const CustomTextWidget(text: 'salma salah'),
              const CustomTextWidget(text: 'kafr elshyk university'),
              const CustomTextWidget(
                text: 'information technology department',
              ),
              const CustomTextWidget(text: 'trainee at iti'),
              const Divider(
                color: Colors.purple,
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextWidget(text: 'salma salah'),
              const CustomTextWidget(text: 'kafr elshyk university'),
              const Divider(
                color: Colors.purple,
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextWidget(text: 'salma salah'),
              const CustomTextWidget(text: 'kafr elshyk university'),
              const Divider(
                color: Colors.purple,
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomTextWidget(text: 'Abdelrahman ElHussein'),
              const CustomTextWidget(text: 'Mansoura University'),
              const CustomTextWidget(
                text: 'information technology department',
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
