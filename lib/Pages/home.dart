import 'package:flutter/material.dart';
import 'package:hello_world/models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  final name = "Bishnudev Khutia";
  final roll = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: CatalogModel.items[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
