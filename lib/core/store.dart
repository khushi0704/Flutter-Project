import 'package:flutter_application/models/cart.dart';
import 'package:flutter_application/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late final CatalogModel catalog;
  late final CartModel cart;

MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
