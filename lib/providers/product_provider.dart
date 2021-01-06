import 'package:flutter/cupertino.dart';

class Products with ChangeNotifier{
  List<Products> _items = [];
  List<Products> get items
  {
    return [..._items];
  }
  void addProduct() {
   // items.add(value);
    notifyListeners();
  }
}