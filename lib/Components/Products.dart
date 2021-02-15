import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var prduct_list = [
    {
      "name":"Blazer",
      "picture":"UtilityImages/black-black-1024x1024.jpg",
      "old_price":120,
      "price":40,
    },
    {
      "name":"Blazer",
      "picture":"UtilityImages/black-black-1024x1024.jpg",
      "old_price":120,
      "price":40,
    },
    {
      "name":"Blazer",
      "picture":"UtilityImages/black-black-1024x1024.jpg",
      "old_price":120,
      "price":40,
    },
    {
      "name":"Blazer",
      "picture":"UtilityImages/black-black-1024x1024.jpg",
      "old_price":120,
      "price":40,
    },
    {
      "name":"Blazer",
      "picture":"UtilityImages/black-black-1024x1024.jpg",
      "old_price":120,
      "price":40,
    },
    {
      "name":"Blazer",
      "picture":"UtilityImages/black-black-1024x1024.jpg",
      "old_price":120,
      "price":40,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container( );
  }
}
class Single_prod extends StatelessWidget {
  final product_name;
  final prod_pict;
  final prod_oldprice;
  final prod_price;

  Single_prod(
  {this.product_name, this.prod_pict, this.prod_oldprice, this.prod_price}
      );
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

