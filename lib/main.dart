import 'package:flutter/material.dart';
import 'package:john_paul_2_app/home.dart';
import 'package:john_paul_2_app/pastor_info.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  int pageIndex = 0;

  final pages = [HomePage(), PastorPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 237, 237, 237)
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
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
            )
          ],
        ),
      ),
    );
  }
}
