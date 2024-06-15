// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, avoid_print

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
          backgroundColor: Colors.red[100],
          actions: [Icon(Icons.logout)],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('Muhammad Junaid'),
              subtitle: Text('Hi, How are you??'),
              trailing: Text("4:15 AM"),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Text('Junaid' + index.toString());
                  }),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black, width: 3)),
                    prefixIcon: Icon(Icons.email_outlined),
                    fillColor: Colors.white12,
                    filled: true,
                    hintText: "Email",
                    labelText: "Email",
                    icon: Icon(Icons.add_alarm),
                    hintStyle: TextStyle(color: Colors.grey)),
                onChanged: (value) {
                  print(value);
                },
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
                radius: 70,
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
