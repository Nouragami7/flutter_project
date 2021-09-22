import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:testb/provider/product1.dart';
import '../provider/product1.dart';

class yourproduct extends StatefulWidget {
  const yourproduct({Key? key}) : super(key: key);

  @override
  _yourproductState createState() => _yourproductState();
}

class _yourproductState extends State<yourproduct> {
  get id => null;

  Widget _countlist(String name, image) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black26,
            foregroundColor: Colors.black,
            backgroundImage: NetworkImage(image),
          ),
          title: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Edit',
          color: Colors.grey,
          icon: Icons.edit,
          onTap: () => print('1'),
        ),
        IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () => print('2')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () => Navigator.pushNamed(context, 'add product'),
                icon: Icon(Icons.add))
          ],
          title: Text('your products'),
          backgroundColor: Colors.purple[400],
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView(
            children: <Widget>[
              _countlist("T-shirt",
                  "https://m.media-amazon.com/images/I/41Fv6ZkJH0L._AC_SL1000_.jpg"),
              Divider(height: 5.0),
              _countlist("Jeans shirt",
                  "https://ae01.alicdn.com/kf/HTB19GRNQpXXXXbyXFXXq6xXFXXX3/2018.jpg"),
            ],
          ),
        ));
  }
}
