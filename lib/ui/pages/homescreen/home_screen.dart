import 'package:cel_to_far_app/widgets/home_screen_widgets/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _LoginPageState();
}

class _LoginPageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(child: homePageBody()),
    );
  }
  Widget homePageBody() => const HomePageBody();
}