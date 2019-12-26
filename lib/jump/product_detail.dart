import 'package:flutter/material.dart';
import 'package:flutter_app/bean/Product.dart';

class ProductDetail extends StatelessWidget{
  final Product product;
  ProductDetail({Key key, @required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.title}',),
        centerTitle: true,
      ),
      body: Center(
        child: Text('${product.description}'),
      ),
    );
  }
}