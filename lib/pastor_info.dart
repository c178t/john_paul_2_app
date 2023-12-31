import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class PastorPage extends StatelessWidget {
  const PastorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Center(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 248, 230),
          body: Container(
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
                              'Vicar',
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
                            child: ClipRRect(
                                    child: Image.asset('assets/Fr-Vinod.png', height: 200,),
                                    borderRadius: BorderRadius.circular(20),
                                  )
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 0), 
                            child: Row(                          
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone,
                                ),
                                TextButton(
                                  onPressed: () async {
                                    const number = '016309015724';
                                    await FlutterPhoneDirectCaller.callNumber(number);
                                  },
                                  child: Text('(630) 901-5724')
                                  )
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
                                Text('vicar@sjp2smc.church')
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
      ),
    );
  }
}