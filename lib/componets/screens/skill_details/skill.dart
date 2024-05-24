import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';

class skillPage extends StatefulWidget {
  const skillPage({super.key});

  @override
  State<skillPage> createState() => _skillPageState();
}

class _skillPageState extends State<skillPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(

        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              height: height*0.4,
              width: width*0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      colors: [
                        darkColor,
                        primaryColor,
                        primaryColor,
                        primaryColor,
                      ]
                  )
              ),

              child: Center(
                child: Text('Skills',style: TextStyle(
                    color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
                ),),
              ),

            ),
          ),
        ),

      ),
      body: Column(
        children: [
          SizedBox(
            height: height*0.4,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/skill2');
              },
              child: Container(
                height: height*0.1,
                width: width*0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        colors: [
                          darkColor,
                          primaryColor,
                          primaryColor,
                          primaryColor,
                        ]
                    )
                ),

                child: Center(
                  child: Text('Add New',style: TextStyle(
                      color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
                  ),),
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
