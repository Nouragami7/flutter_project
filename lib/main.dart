import 'package:flutter/material.dart';
import '../screen/home_screen.dart';
import '../screen/your_product_screen.dart';

void main() {
  runApp(MyyApp());
}

class MyyApp extends StatelessWidget {
  const MyyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
      routes: {
        'your product': (ctx) => yourproduct(),
      },
    );
  }
}
