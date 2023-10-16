import 'package:flutter/material.dart';
import 'package:john_paul_2_app/Moving%20Container/moving_container.dart';
import 'package:google_fonts/google_fonts.dart';

class PastorPage extends StatelessWidget {
  const PastorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Center(
        child: Container(
                color: Color.fromARGB(255, 255, 248, 230),
                constraints: BoxConstraints(
                  minHeight: double.infinity,
                  minWidth: double.infinity
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 150),
                  child: 
                  
                  Container(
                    constraints: BoxConstraints(
                      minWidth: 380,
                      maxWidth: double.infinity
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,25,0,0),
                          child: DefaultTextStyle(
                            style: GoogleFonts.libreBaskerville(
                                    color: Colors.black,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold
                                    ), 
                                    child: Text(
                            'Father',
                            textAlign: TextAlign.center,                      
                            )
                                )
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,12,0,0),
                          child: DefaultTextStyle(
                            style: GoogleFonts.libreBaskerville(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                    ), 
                                    child: Text(
                            'Vinod Madathiparambil George',
                            textAlign: TextAlign.center,                      
                            )
                                )
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,30,0,0),
                          child: CircleAvatar(
                            foregroundImage: AssetImage('assets/Fr-Vinod.png'),
                            radius: 80,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 0), 
                          child: Row(                          
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                              ),
                              Text('(630) 901-5724')
                            ],
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 0), 
                          child: Row(                          
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.mail,
                              ),
                              Text('vicar@stalphonsacatholicchurch.org')
                            ],
                        ),
                        ),


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
              ),
      ),
    );
  }
}