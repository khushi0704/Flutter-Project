import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/HomePg.dart';
import 'pages/LoginPg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme:GoogleFonts.latoTextTheme(),
       appBarTheme: AppBarTheme(
         color: Colors.white,
       ) 
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
     initialRoute:  MyRoutes.homeRoute ,
      routes: {
       "/": (context) => LoginPage(),
       MyRoutes.homeRoute  : (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }

 
  
}
