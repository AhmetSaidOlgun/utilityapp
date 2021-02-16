import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
  this.product_detail_name,
  this. product_detail_new_price,
  this.product_detail_old_price,
    this.product_detail_picture
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('UtilityImages/iconofutılıty.png'),
                  fit: BoxFit.contain
              )
          ),
        ),
        title: Text('Utility Appearel', style: TextStyle(color: Colors.white)),
        actions: [
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
      body: new ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                    leading: new Text (widget.product_detail_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),

                  title: new Row(
                    children: [
                      Expanded(
                        child: new Text("${widget.product_detail_old_price}"),
                      ),
                      Expanded(
                        child: new Text("${widget.product_detail_new_price}"),
                      )
                    ],
                  ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
