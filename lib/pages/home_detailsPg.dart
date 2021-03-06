import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/home_widgets/addToCart.dart';
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
      appBar : AppBar(),
      bottomNavigationBar:  ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding:Vx.mOnly(right:16),
        children: [
          "\$${catalog.price}".text.red500.xl4.bold.make(),
           AddToCart(
             catalog: catalog,
             ).wh(150,50)
        ],
        ).p32(),
      body:SafeArea(
      bottom: false,
      child: Column(
        children: [
          Hero(
           tag: Key(catalog.id.toString()), 
            child: Image.network(catalog.image).p12(),
          ).h32(context),

          Expanded(
            child:VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
            child: Container(
              width: context.screenWidth,
            child: Column(
              children: [
                catalog.name.text.xl4.make(),
                catalog.desc.text.gray500.xl.make(),
                10.heightBox,
                "Learn Flutter from basics to advanced in just 8+ hours. This covers everything related to UI, Data, Model, API, State Management, Navigator 2.0 and more".text.gray500.make().px16(), 
              ],
              ).py32(),
            ),
            ),
            )
        ],
        ).centered()
    )
    );
  }
}