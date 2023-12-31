
import 'package:flutter/material.dart';
import 'package:john_paul_2_app/ccd.dart';
import 'package:john_paul_2_app/home.dart';
import 'package:john_paul_2_app/pastor_info.dart';

void main() {
  runApp(MaterialApp(
    home: const MainApp(),
   debugShowCheckedModeBanner: false,
   )
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  int pageIndex = 0;

  final pages = [HomePage(), PastorPage(), CCDPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 255, 255, 255)
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 237, 237, 237),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: pages[pageIndex],
        ),
        backgroundColor: Color.fromARGB(255, 255, 248, 230),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )
          ),
          title: Text(
            "St. John Paul II Catholic Church",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          
          onTap: (index) => setState(() {
            pageIndex = index;
          }),
          currentIndex: pageIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home
              ),
              label: "Home"
            ),

            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_rounded
              ),
              label: "Pastor Info"
            ),
          
            BottomNavigationBarItem(
              icon: Icon(
                Icons.school_sharp
              ),
              label: "CCD Info"
            )
          ],
        ),
      ),
    );
  }
}


