import 'package:flutter/material.dart';
import 'package:testb/screen/home_screen.dart';
import 'package:testb/widget/product_widget.dart';

class Prouduct1 {
  final String id, title, description, imgUrl;
  final double price;
  final bool isfav;
  State? status;

  Prouduct1({
    required this.id,
    required this.description,
    required this.title,
    required this.imgUrl,
    required this.price,
    required this.isfav,
    required this.status,
  });
}

class products {
  List<Prouduct1> _products = [
    Prouduct1(
      id: '1',
      title: 'product 1',
      description: 'any description',
      imgUrl:
          'https://ae01.alicdn.com/kf/HTB19GRNQpXXXXbyXFXXq6xXFXXX3/2018.jpg',
      isfav: false,
      status: null,
      price: 130.0,
    ),
    Prouduct1(
        id: '1',
        description: 'any description',
        title: 'product 1',
        imgUrl:
            'https://m.media-amazon.com/images/I/41Fv6ZkJH0L._AC_SL1000_.jpg',
        price: 150,
        isfav: false,
        status: null),
  ];
  // void ChangeStatus(String id, status status) {
  //   _products.firstWhere((element) => element.id == id).status =
  //       status as State<StatefulWidget>?;
  //   notifyListeners();
  // }

  // List<Prouduct1> Filterproducts({status? status}) {
  //   return _products.where((element) => element.status == status).toList();
  // }

  // void removeProduct(String id) {
  //   _products.removeWhere((element) => element.id == id);
  //   print(_products.length);
  //   notifyListeners();
  // }
}
