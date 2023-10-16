import 'package:flutter/material.dart';

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
        child: Container(
                color: Color.fromARGB(255, 255, 248, 230),
                
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
                  child: 
                  
                  Container(
                    
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
    );
  }
}