import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Text Kit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Welcome to AI"),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 1) Rotate Animated Text
                AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText(
                      'AWESOME',
                      textStyle: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    RotateAnimatedText(
                      'OPTIMISTIC',
                      textStyle: const TextStyle(
                        letterSpacing: 3,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    RotateAnimatedText(
                      'Welcome to AI',
                      textStyle: const TextStyle(
                        fontSize: 30,
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  totalRepeatCount: 10,
                  pause: const Duration(milliseconds: 1000),
                ),

                const SizedBox(height: 20),

                // 2) Fade + Scale Animated Text
                Center(
                  child: AnimatedTextKit(
                    totalRepeatCount: 40,
                    animatedTexts: [
                      FadeAnimatedText(
                        'First Fade',
                        textStyle: const TextStyle(
                          backgroundColor: Colors.green,
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ScaleAnimatedText(
                        'Then Get Bigger',
                        duration: const Duration(milliseconds: 4000),
                        textStyle: const TextStyle(
                          color: Colors.indigo,
                          fontSize: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // 3) Typer Animated Text
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'This is Animated text,',
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        backgroundColor: Colors.purple,
                      ),
                    ),
                    TyperAnimatedText(
                      'You are viewing it here.',
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  onTap: () {
                    print("I am executing");
                  },
                ),

                const SizedBox(height: 20),

                // 4) Wavy Animated Text
                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        'Hello World',
                        textStyle: const TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                        ),
                      ),
                      WavyAnimatedText(
                        'Look at the waves',
                        textStyle: TextStyle(
                          color: Colors.green[600],
                          fontSize: 30,
                        ),
                      ),
                    ],
                    repeatForever: true,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
