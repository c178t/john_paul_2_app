import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:delayed_display/delayed_display.dart';

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
          backgroundColor:Color.fromARGB(255, 255, 248, 230),
          body: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
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
             
              DelayedDisplay(
                delay: Duration(seconds: 1),
                slidingBeginOffset: Offset(0, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
                  child: 
                  
                  Container(
                    constraints: BoxConstraints(
                      minWidth: double.maxFinite
                    ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0,12,0,0),
                         child: DefaultTextStyle(
                               style: GoogleFonts.libreBaskerville(
                                      textStyle: TextStyle(decoration: TextDecoration.underline),
                                       color: Colors.black,
                                       fontSize: 30,
                                       fontWeight: FontWeight.bold
                                       ), 
                                       child: Text(
                               'Mass Timings',
                               textAlign: TextAlign.center,                      
                               )
                                   ),
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0,8,0,0),
                         child: DefaultTextStyle(
                               style: GoogleFonts.libreBaskerville(
                                       color: Colors.black,
                                       fontSize: 24,
                                       fontWeight: FontWeight.bold
                                       ), 
                                       child: Text(
                               '4:30 pm',
                               textAlign: TextAlign.center,                      
                               )
                                   ),
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0,100,0,0),
                         child: DefaultTextStyle(
                               style: GoogleFonts.libreBaskerville(
                                      textStyle: TextStyle(decoration: TextDecoration.underline),
                                       color: Colors.black,
                                       fontSize: 30,
                                       fontWeight: FontWeight.bold
                                       ), 
                                       child: Text(
                               'Pinecrest Academy',
                               textAlign: TextAlign.center,                      
                               )
                                   ),
                       ),
                       SizedBox(height: 350,),
                       
                     ],

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
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                      ),
                      color: Color.fromARGB(255, 255, 255, 255),
                      
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
