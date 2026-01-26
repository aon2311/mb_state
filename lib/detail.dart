import 'package:flutter/material.dart';
import 'model/product.dart';
import 'catalog_product.dart';

class Detail extends StatelessWidget {
  final Product product;

  const Detail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail Page'),
          backgroundColor: Colors.green[200],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  product.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                Image.network(product.imageUrl),
                const SizedBox(
                  height: 16,
                ),
                Text('ID :${product.id}'),
                const SizedBox(
                  height: 16,
                ),
                Text(product.desc),
              ],
            ),
          ),
        ));
  }
}
