import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
     home: Homepage()
    )
  );
}
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Text('Hey', style: TextStyle(color: Colors.blue),),
    );
  }
}
