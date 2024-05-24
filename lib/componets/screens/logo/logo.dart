import 'dart:async';

import 'package:flutter/material.dart';

class logoPage extends StatefulWidget {
  const logoPage({super.key});

  @override
  State<logoPage> createState() => _logoPageState();
}

class _logoPageState extends State<logoPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    Timer(Duration(seconds: 3), () {

      Navigator.of(context).pushReplacementNamed('/first');

    });

    return Scaffold(
      body: Container(

        decoration: BoxDecoration(

          color: Colors.pink,
          image: DecorationImage(
              fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/pro4.jpg'
            )
          )
        ),
      ),
    );
  }
}