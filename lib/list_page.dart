import 'package:flutter/material.dart';
import 'package:myapp/catalog_product.dart';
import 'package:myapp/detail.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        itemCount: CatalogProducts.item.length,
        itemBuilder: (context, index) {
          final product = CatalogProducts.item[index];

          return ListTile(
            leading: Image.network(product.imageUrl),
            title: Text(product.title),

            subtitle: Text(product.desc),
            onTap: () {
              Navigator.pushNamed(context,'/detail',arguments: product );
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
