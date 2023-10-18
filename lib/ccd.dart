import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CCDPage extends StatefulWidget {
  const CCDPage({super.key});

  @override
  State<CCDPage> createState() => _CCDPageState();
}

class _CCDPageState extends State<CCDPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 248, 230),
          body: Container(
                  constraints: BoxConstraints(
                    minHeight: double.infinity,
                    minWidth: double.infinity
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 20, 8, 300),
                    child:                   
                    Container(
                      constraints: BoxConstraints(
                        minWidth: 380,
                        maxWidth: double.infinity,
                        minHeight: 500
                      ),
                      child: DefaultTextStyle(
                              style: GoogleFonts.libreBaskerville(
                                      color: Colors.black,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold
                                      ), 
                                      child: Text(
                              'Coming Soon',
                              textAlign: TextAlign.center,                      
                              )
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
                          bottomRight: Radius.circular(20),
                        ),
                        color: Color.fromARGB(255, 255, 255, 255),
                        
                      ),
                      
                    ),
                  ),
              ),
        ),
    )
    );
  }
}