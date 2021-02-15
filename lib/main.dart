// ignore: avoid_web_libraries_in_flutter


import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('UtilityImages/2019-1-1024x1024.jpg'),
        AssetImage('UtilityImages/buff-1024x1024.jpg'),
        AssetImage('UtilityImages/christmas-baglamali-yesil-beyaz-1024x1024.jpg'),
        AssetImage('UtilityImages/ekru-1024x1024.jpg'),
        AssetImage('UtilityImages/maske-1-1024x1024.jpg'),
        AssetImage('UtilityImages/white-yellow-1024x1024.jpg'),
      ],
      autoplay: true,
      dotSize: 4,
      indicatorBgPadding: 6.0,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );
    return Scaffold(

      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white70,

        title: Text('Utility Appearel', style: TextStyle(color: Colors.black)),
        actions: [
          new IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.black,), onPressed: (){})
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            new UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                color: Colors.blueGrey),
              accountName: Text('Ahmet Said Olgun'),
              accountEmail: Text('aolgun98@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person),
              ),
            ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Store'),
                leading: Icon(Icons.home, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('References'),
                leading: Icon(Icons.room_preferences, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Contact'),
                leading: Icon(Icons.phone, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Basket'),
                leading: Icon(Icons.shopping_basket_rounded, color: Colors.black),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.black),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.black),
              ),
            ),
          ],
        )
      ),
      body: ListView(
        children: [
          image_carousel
        ],
      ),
    );
  }
}

