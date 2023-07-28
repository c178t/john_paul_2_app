import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Scaffold(
          body: Column(
            children: [
              
              Container(
                alignment: Alignment.topLeft,
                color: Color.fromARGB(255, 255, 248, 230),
                padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: DefaultTextStyle(
                  style: GoogleFonts.libreBaskerville(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        alignment: Alignment.topLeft,
                        'Good Morning',
                        rotateOut: false,
                        duration: Duration(
                          seconds: 1
                        )
                      )
                    ],
                    isRepeatingAnimation: false,  
                  ),
                ),
              ),
              
            Flexible(

              child: Container(
                color: Color.fromARGB(255, 255, 248, 230),
                
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
                  child: AnimatedContainer(
                    duration: Duration(
                      seconds: 3
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 7, 
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    
                  ),
                ),
              ),
            )

            ],
          )
        ),
      ),
    );
  }
}
