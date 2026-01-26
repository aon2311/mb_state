import 'package:flutter/material.dart';
import 'package:myapp/about_page.dart';
import 'package:myapp/catalog_product.dart';


class ListPage extends StatelessWidget {
  ListPage({super.key});
  /*final List<String> products =<String>[
    'Water Filter ',
    'Brown',
    'Filter 3 steps',
    'Smart Robot Car',
    'Remote'
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        backgroundColor: Colors.green[200],
      ),
      body: ListView.separated(
        itemCount:  CatalogProducts.item.length,
        itemBuilder: (context,index)=>ListTile(
          leading: Image.network(
            CatalogProducts.item[index].imageUrl,
          ),
          title: Text(
            CatalogProducts.item[index].title
          ),
          subtitle: Text(CatalogProducts.item[index].title),
        ),
        separatorBuilder :(context,index)=>Divider()
      ),
    );
  }
}