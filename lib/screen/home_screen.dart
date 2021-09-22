import 'package:flutter/material.dart';
import '../screen/Product_screen.dart';
import '../screen/favourite_screen.dart';
import '../widget/product_widget.dart';
import '../provider/product1.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentIndex = 0;
  late List<Map<String, dynamic>> _pages;

  void changepadge(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {
        'title': 'MyShop',
        'page': Productscreen(),
      },
      {
        'title': 'Favourite',
        'page': favouritescreen(),
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (_currentIndex == 0)
            IconButton(
                onPressed: () => Navigator.pushNamed(context, 'your product'),
                icon: Icon(Icons.add_business_outlined)),
        ],
        backgroundColor: Colors.purple[400],
        title: Text(_pages[_currentIndex]['title']),
      ),
      body: _pages[_currentIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.purple[400],
          currentIndex: _currentIndex,
          onTap: changepadge,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'product'),
            BottomNavigationBarItem(
                icon: Icon(Icons.star_border_outlined), label: 'favourite'),
          ]),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   shape: ,
      //   child: Icon(Icons.pages_rounded,
    );
  }
}
