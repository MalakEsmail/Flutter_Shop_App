import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/products_overview_screen.dart';
import 'screens/product_details_screen.dart';
import 'providers/product_provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx)=> ProductProvider(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor:Colors.deepOrange ,
          fontFamily: 'Lato',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductOverViewScreen(),
        routes: {
          ProductDetailsScreen.routeName:(ctx)=>ProductDetailsScreen(),
        },
      ),
    );
  }
}


