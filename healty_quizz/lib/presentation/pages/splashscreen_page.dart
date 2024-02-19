import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healty_quizz/presentation/pages/register_page.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/home-page';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // void initState() {
  //   Timer(Duration(seconds: 3), () {
  //     Navigator.pushNamed(context, RegisterPage.routeName);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Size screenWidth = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xffD2F6C5),
        appBar: AppBar(
          backgroundColor: Color(0xff28DF99),
          title: Text(
            "Welcome",
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: screenWidth.width,
                height: screenWidth.height / 2.5,
                color: Colors.amber,
                child: Image.asset(
                  'assets/gambar_splash_screen.jpeg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 60,
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome",
                style: GoogleFonts.openSans(
                  fontSize: 26.9,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff00BF63),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "HealtyQuiz",
                style: GoogleFonts.openSans(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w200,
                  color: Color(0xff00BF63),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegisterPage.routeName);
                },
                child: Text(
                  "Get Started",
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 19.1),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff00BF63),
                    padding: EdgeInsets.symmetric(horizontal: 50)),
              ),
              SizedBox(
                height: 20,
              ),
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
