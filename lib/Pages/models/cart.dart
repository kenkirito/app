import 'package:flutter_app/Pages/models/catalog.dart';

class CartModel {
  //catalog field
  late CatalogModel _catalog;

  //collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
