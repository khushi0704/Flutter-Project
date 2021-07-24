import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:flutter_application/widgets/themes.dart';
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
      theme: MyTheme.lightTheme(context),
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
