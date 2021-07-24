class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [Item(
  id: "Codepur001",
  name: "Iphone12 Pro",
  desc: "iPhone new rdjsbc",
  price: 99,
  color: "#33505a", 
  image: 
  "https://images-na.ssl-images-amazon.com/images/I/71hIfcIPyxS._SL1500_.jpg",
)];
