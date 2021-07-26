import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application/models/catalog.dart';

class  HomeDetailsPg extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPg({ Key? key , required this.catalog }) :
  // ignore: unnecessary_null_comparison
  assert(catalog!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.white,
      body:SafeArea(
      child: Column(
        children: [
          Hero(
           tag: Key(catalog.id.toString()), 
            child: Image.network(catalog.image),
          )
        ],
        ).p16().centered(),
    )
    );
  }
}