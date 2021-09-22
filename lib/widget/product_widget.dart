import 'package:flutter/material.dart';
import '../screen/product_screen.dart';

enum status { yourproduct }

class prouductwidget extends StatelessWidget {
  final String id, title, description, imgUrl;
  final double price;
  final bool isfav;
  final State? status;

  const prouductwidget(this.id, this.description, this.imgUrl, this.isfav,
      this.price, this.title, this.status,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile();
  }
}
