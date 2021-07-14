class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 pro",
      desc: "12th generation phone",
      price: 999,
      image:
          "https://www.citymac.com/store/wp-content/uploads/2017/09/iPhoneX-Combo.jpg",
      color: "black",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String image;
  final String color;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.image,
      required this.color});
}
