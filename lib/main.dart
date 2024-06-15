// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Center(
            child: Text('Flutter widgets'),
          ),
          backgroundColor: Colors.cyanAccent[100],
          actions: [Icon(Icons.logout)],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    fillColor: Colors.red[100],
                    filled: true,
                    hintText: "Email",
                    labelText: "Email",
                    hintStyle: TextStyle(color: Colors.green)),
              ),
            ),
            RichText(
                text: TextSpan(
                    text: "Hello ",
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                  TextSpan(text: "World", style: TextStyle(color: Colors.green))
                ])),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Divider(
              color: Colors.black,
              thickness: 5,
            ),
            SizedBox(
              height: 100,
              child: VerticalDivider(
                color: Colors.black,
                thickness: 5,
              ),
            ),
            Center(
              child: CircleAvatar(
                radius: 90,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
