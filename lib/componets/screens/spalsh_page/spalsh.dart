import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splshPage extends StatefulWidget {
  const splshPage({super.key});

  @override
  State<splshPage> createState() => _splshPageState();
}

class _splshPageState extends State<splshPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/login');
            },
            child: Center(
              child: Container(
                height: 678,
                width: 600,
                color: Colors.white,
                child:Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Center(

                        child: GestureDetector(

                            onTap: () {
                              Navigator.of(context).pushReplacementNamed('/login');
                            },
                          child: Container(
                            height: 300,
                            width: 400,
                            decoration: BoxDecoration(

                                image: DecorationImage(
                                    fit: BoxFit.cover,

                                    image: AssetImage(
                                        'assets/images/pr1.jpg'
                                    )
                                )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ),
            ),
          )
        ],
      ),
    );
  }
}
