// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors, unused_import

import 'package:flutter/material.dart';
// import 'package:grapeful/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                decoration: BoxDecoration(color: Color(0xFF2F455C)),
                child: Column(children: [
                  SizedBox(height: 280),
                  Center(
                    child: GradientText(
                      'Care+',
                      style: GoogleFonts.arvo(
                        fontSize: 90,
                        fontWeight: FontWeight.w700,
                      ),
                      colors: [
                        Color(0xFF1DCDFE),
                        Color(0xFF21D0B2),
                        Color(0xFF34F5C5),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  InkWell(
                    onTap: () {
                      //pushreplacednamed so it cannot go back to splash screen
                      Navigator.pushReplacementNamed(context, "regLog");
                    },
                    //for animation on container
                    child: Container(
                      height: 80,
                      width: 170,
                      // container displaying the text

                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(colors: [
                          Color(0xFF1DCDFE),
                          Color(0xFF21D0B2),
                          Color(0xFF34F5C5),
                        ]),
                      ),
                      child: Center(
                          child: Text("Get Started !",
                              style: TextStyle(
                                color: Color(0xFF2F455C),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))),
                    ),
                  )
                ]))));
  }
}
