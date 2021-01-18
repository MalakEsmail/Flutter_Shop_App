import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/widgets/badge.dart';
import '../widgets/products_grid.dart';
import '../screens/cart_screen.dart';
import '../widgets/app_drawer.dart';

enum filterOptions { Favorites, All }

class ProductOverViewScreen extends StatefulWidget {
  @override
  _ProductOverViewScreenState createState() => _ProductOverViewScreenState();
}

class _ProductOverViewScreenState extends State<ProductOverViewScreen> {
  var _showFavouriteOnly = false;
  @override
  Widget build(BuildContext context) {
    // final productsContainer =
    //     Provider.of<ProductProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          PopupMenuButton(
            onSelected: (filterOptions selectedValue) {
              setState(() {
                if (selectedValue == filterOptions.Favorites) {
                  _showFavouriteOnly = true;
                  //  productsContainer.showFavouritesOnly();
                } else {
                  _showFavouriteOnly = false;
                  //  productsContainer.showAll();
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favourites'),
                value: filterOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: filterOptions.All,
              ),
            ],
          ),
          Consumer<Cart>(
            builder:(_,cart,ch)=> Badge(
              child: ch,
              value: cart.cartCount.toString(),
            ),
            child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: (){
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                },
              ),
          ),
          
        ],
      ),
      drawer:AppDrawer() ,
      body: ProductsGrid(_showFavouriteOnly),
    );
  }
}
