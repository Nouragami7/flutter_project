import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../provider/product.dart';

class Productscreen extends StatelessWidget {
  const Productscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List_item = [
      {
        "name": "Shirt",
        "pic": "img/t-shirt.jpg",
      },
      {
        "name": "Jeans shirt",
        "pic": "img/jeans.jpg",
      },
    ];

    return GridView.builder(
        padding: const EdgeInsets.all(30.0),
        itemCount: List_item.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Product(
            product_name: List_item[index]['name'],
            product_pic: List_item[index]['pic'],
          );
        });
  }
}
