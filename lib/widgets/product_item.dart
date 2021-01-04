import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;
  ProductItem(this.id, this.title, this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imgUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        backgroundColor: Colors.black54,
        title: Text(title, textAlign: TextAlign.center),
        trailing: IconButton(
          icon: Icon(Icons.shopping_basket),
          onPressed: () {},
        ),
      ),
    );
  }
}
