import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itistore/views/screens/botttom_nav_screen.dart';
import 'package:itistore/views/screens/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'firebase_options.dart';
import 'models/user_data_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  runApp(
    ChangeNotifierProvider(
      create: (context) => UserDataProvider(prefs)..loadUserData(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.caladeaTextTheme(),
          ),
          debugShowCheckedModeBanner: false,
          home: const AuthCheck(),
        );
      },
    );
  }
}

class AuthCheck extends StatelessWidget {
  const AuthCheck({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    // Check if the user is authenticated and decide which screen to show
    if (user != null) {
      return const BottomNavBar(); // User is authenticated, show the main screen
    } else {
      return const WelcomeScreen(); // User is not authenticated, show the login screen
    }
  }
}
