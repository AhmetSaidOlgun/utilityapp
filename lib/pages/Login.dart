import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:utilityapp/pages/Home.dart';
import 'package:utilityapp/pages/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String _email, _password;
  final auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
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
    title: InkWell(
    child: Text('Utility Appearel', style: TextStyle(color: Colors.white) )),
    ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Email"
              ),
              onChanged: (value){
                setState(() {
                  _email = value.trim();
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password"
              ),
              onChanged: (value){
                setState(() {
                  _password = value.trim();
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                color: Theme.of(context).accentColor,
                  child: Text("Sign İn"),
                  onPressed: (){
                  auth.signInWithEmailAndPassword(email: _email, password: _password);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
              }),
              RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text("Sign Up"),
                  onPressed: (){
                    auth.createUserWithEmailAndPassword(email: _email, password: _password);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
                  })
            ],
          )
        ],
      ),
    );
  }
}
