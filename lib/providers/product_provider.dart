import 'package:flutter/cupertino.dart';
import 'package:shop_app/providers/product.dart';

// steps of Provider StateManagement
/*
 1- install Provider package
 2- create class inherit changeNotifier
 3- wrap MaterialApp with ChangeNotifierProvider
 4- listen any where .. Provider Of
 */
class ProductProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
        id: 'p2',
        title: 'Trousers',
        description: 'A nice pair of trousers.',
        price: 59.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg'),
  ];
  // var _showFavouriteOnly = false;

  List<Product> get items {
    /* if (_showFavouriteOnly) {
      return _items.where((prodItem) => prodItem.isFavorite).toList();
    }*/
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prod) => prod.isFavorite == true).toList();
  }

  /* void showFavouritesOnly(){
    _showFavouriteOnly=true;
  }

  void showAll(){
    _showFavouriteOnly=false;
  }*/
  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // items.add(value);
    notifyListeners();
  }
}
