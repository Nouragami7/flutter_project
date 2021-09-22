import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

class Product extends StatelessWidget {
  final product_name;
  final product_pic;

  Product({
    this.product_name,
    this.product_pic,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
            tag: product_name,
            child: Material(
                child: InkWell(
              onTap: () {},
              child: GridTile(
                header: Container(
                  color: Colors.black45,
                  child: ListTile(
                      title: FavoriteButton(
                    isFavorite: true,
                    iconSize: 40,
                    iconColor: Colors.orange[800],

                    // iconDisabledColor: Colors.white,
                    valueChanged: (_isFavorite) {
                      print('Is Favorite : $_isFavorite');
                    },
                  )),
                ),
                footer: Container(
                  color: Colors.black54,
                  child: ListTile(
                    leading: Text(product_name,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white)),
                  ),
                ),
                child: Image.asset(
                  product_pic,
                ),
              ),
            ))));
  }
}
