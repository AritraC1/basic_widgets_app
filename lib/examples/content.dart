import 'package:basic_widgets_app/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              right: -150,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
              )),
          Positioned(
              left: -200,
              bottom: -470,
              child: Container(
                height: 600,
                width: 600,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
              )),

          // Logo
          Positioned(
            top: 25,
            left: 15,
            child: Container(
              height: 30,
              child: Image.asset('assets/logo.png'),
            ),
          ),

          // Tag line
          Positioned(
              top: 62,
              left: 25,
              child: ModifiedText(
                text: "it's where you want to be",
                color: Colors.grey.shade900,
                size: 14,
              )),

          // Name and Card Number
          Positioned(
              bottom: 30,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1234 5678 9012 0011",
                    style: GoogleFonts.sourceCodePro(
                        fontSize: 24,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "TONY STARK",
                    style: GoogleFonts.sourceCodePro(
                        fontSize: 20,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )),
          Positioned(
              right: 10,
              child: Container(
                height: 80,
                child: Image.asset('assets/chip.png'),
              ))
        ],
      ),
    );
  }
}
