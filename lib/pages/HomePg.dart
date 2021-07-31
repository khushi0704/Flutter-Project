import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/core/store.dart';
import 'package:flutter_application/models/cart.dart';
import 'dart:convert';
import 'package:flutter_application/models/catalog.dart';
import 'package:flutter_application/utils/routes.dart';
import 'package:flutter_application/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_application/widgets/home_widgets/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      floatingActionButton:VxBuilder(
        mutations: {AddMutation,RemoveMutation},
        builder: (ctx,_,status)=>FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        child: Icon(CupertinoIcons.cart)
        
      ).badge(color: Vx.red500, size: 20,count: _cart.items.length),
      ),
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                // ignore: unnecessary_null_comparison
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().py16(),
              ],
            )),
      ),
    );
  }
}
