import 'package:flutter/cupertino.dart';
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
                    leading: new Text (widget.product_detail_name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),

                  title: new Row(
                    children: [
                      Expanded(
                        child: new Text("\$${widget.product_detail_old_price}",
                        style: TextStyle(color: Colors.blueGrey,
                            decoration: TextDecoration.lineThrough),),
                      ),
                      Expanded(
                        child: new Text("\$${widget.product_detail_new_price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                      )
                    ],
                  ),
              ),
            ),
          ),
          ),


          // =====================First Button =======================

          Row(
            children: [
              //=====================   SizeButton
              Expanded(child: MaterialButton(onPressed: (){
                showDialog(context: context, builder: (context){
                  return new AlertDialog(
                    title: Text('Size'),
                    content: Text('Choose the size'),
                    actions: [
                      MaterialButton(onPressed:(){
                        Navigator.of(context).pop(context);
                      },
                      child: new Text('Close', style: TextStyle(color: Colors.blue),),)
                    ],
                  );
                });
              },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.3,
                child: Row(
                children: [
                  Expanded(child:
                  Text('Size'),),
                  Expanded(child:
                  Icon(Icons.arrow_drop_down_outlined)),

                ],
              ),
              ),
              ),
              //=====================   ColorButton
              Expanded(child: MaterialButton(onPressed: (){
                showDialog(context: context, builder: (context){
                  return new AlertDialog(
                    title: Text('Color'),
                    content: Text('Choose the color'),
                    actions: [
                      MaterialButton(onPressed:(){
                        Navigator.of(context).pop(context);
                      },
                        child: new Text('Close', style: TextStyle(color: Colors.blue),),)
                    ],
                  );
                });
              },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.3,
                child: Row(
                  children: [
                    Expanded(child:
                    Text('Color'),),
                    Expanded(child:
                    Icon(Icons.arrow_drop_down_outlined)),

                  ],
                ),
              ),
              ),
              //=====================   QuantityButton
              Expanded(child: MaterialButton(onPressed: (){
                showDialog(context: context, builder: (context){
                  return new AlertDialog(
                    title: Text('Quantity'),
                    content: Text('Choose the quantity'),
                    actions: [
                      MaterialButton(onPressed:(){
                        Navigator.of(context).pop(context);
                      },
                        child: new Text('Close', style: TextStyle(color: Colors.blue),),)
                    ],
                  );
                });
              },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.3,
                child: Row(
                  children: [
                    Expanded(child:
                    Text('Qty'),),
                    Expanded(child:
                    Icon(Icons.arrow_drop_down_outlined)),

                  ],
                ),
              ),
              ),
            ],
          ),
          // =====================Second Button =======================

          Row(
            children: [
              //=====================   SizeButton
              Expanded(child: MaterialButton(onPressed: (){},
                color: Colors.red,
                textColor: Colors.white,
                elevation: 0.3,
                child: new Text('Buy now')
              ),
              ),
                new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: (){}),
                new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: (){}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text('Product Details'),
            subtitle: new Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
          ),
          Divider(),
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text('Product name', style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
               child: new Text(widget.product_detail_name),)
            ],
          ),
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text('Product brand', style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text('Utility'),
              )
            ],
          ),
          new Row(
            children: [
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text('Product condition', style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),child: new Text('Available'),)
            ],
          ),
        ],
      ),
    );
  }
}
