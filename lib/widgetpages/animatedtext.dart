import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Animatedtext extends StatelessWidget {
  const Animatedtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ANIMATED TEXT WIDGET",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 192, 65, 255),
      ),
      body: Column(
        children: [
          // Typewriter Animation
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText('Tony Stark',
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                  speed: const Duration(milliseconds: 100))
            ],
            totalRepeatCount: 10,
            pause: const Duration(milliseconds: 200),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),

          const SizedBox(width: 50),

          // Fade Animation
          AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText(
                'Tony Stark',
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
            totalRepeatCount: 10,
            pause: const Duration(milliseconds: 200),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),

          const SizedBox(width: 50),

          // Scale Animation
          AnimatedTextKit(
            animatedTexts: [
              ScaleAnimatedText(
                'Tony Stark',
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
            totalRepeatCount: 10,
            pause: const Duration(milliseconds: 200),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),

          const SizedBox(width: 50),

          // Wavy
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Tony Stark',
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                  speed: const Duration(milliseconds: 1000))
            ],
            totalRepeatCount: 10,
            pause: const Duration(milliseconds: 200),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),

          const SizedBox(width: 50),
        ],
      ),
    );
  }
}
