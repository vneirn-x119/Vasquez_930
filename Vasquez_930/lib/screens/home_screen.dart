import 'dart:html';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hello World",
            style: TextStyle(
                color: Color(0xffc10323), fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Text("How are u?", style: TextStyle(color: Color(0xffc10323))),
          Row(
            children: [
              Text(
                "Hello World",
                style: TextStyle(
                    color: Color(0xffc10323), fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 50,
              ),
              Text("How are u?", style: TextStyle(color: Color(0xffc10323))),
            ],
          )
        ],
      ),
    );
  }
}
