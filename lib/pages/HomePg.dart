import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
         title: Text(
          "Catalog App"
          ),
        ),
      body: Center(
        child: Container(
          child:Text("Welcome Here , App run successfull"),
        ),
      ),
    drawer: MyDrawer(),
    );
  }
}