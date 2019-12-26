import 'package:flutter/material.dart';
import 'package:flutter_app/bean/Product.dart';
import 'package:flutter_app/jump/product_detail.dart';

void main() {
  runApp(ListJumpApp());
}

class ListJumpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '商品列表',
        ),
        centerTitle: true,
      ),
      body: ProductList(
              products:List.generate(20, (i) => Product('商品 $i', '这是一个商品详情，编号为:$i'))),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ProductDetail(product: products[index])));
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
