import 'package:cel_to_far_app/ui/pages/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   Color primaryColor = const Color(0xFF212936);
   Color secondaryColor = const Color(0xFF2849E5);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home Page",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: GoogleFonts.dmSans().fontFamily,
          scaffoldBackgroundColor: primaryColor,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.white),
              toolbarTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ))),
      initialRoute: "dashboard",
      routes: {
        "dashboard": (context) => const HomePage(),
      },
    );
  }
}