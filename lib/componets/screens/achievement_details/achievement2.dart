import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';

class achievement2Page extends StatefulWidget {
  const achievement2Page({super.key});

  @override
  State<achievement2Page> createState() => _achievement2PageState();
}

class _achievement2PageState extends State<achievement2Page> {
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
                child: Text('Achievement Details',style: TextStyle(
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
            height: height*0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 190),
            child: Text('Achievement Name',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w800
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(

              decoration: InputDecoration(
                  labelText: 'Name of Achievement',

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: primaryColor,
                          width:  width*0.0050
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: primaryColor,
                          width:  width*0.0050
                      )
                  ),focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: primaryColor,
                      width:  width*0.0060
                  )
              )
              ),
            ),
          ),
          SizedBox(
            height: height*0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 190),
            child: Text('Year of Achievement',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w800
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(

              decoration: InputDecoration(
                  labelText: 'Year of Achievement',

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: primaryColor,
                          width:  width*0.0050
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: primaryColor,
                          width:  width*0.0050
                      )
                  ),focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: primaryColor,  width:  width*0.0060
                  )
              )
              ),
            ),
          ),
          SizedBox(
            height: height*0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text('Personal Details',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w800
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(

              decoration: InputDecoration(
                  labelText: 'What you have Archived',

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: primaryColor,
                          width:  width*0.0050
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: primaryColor,
                          width:  width*0.0050
                      )
                  ),focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: primaryColor,
                      width:  width*0.0060
                  )
              )
              ),
            ),
          ),
          Center(
            child: GestureDetector(

              child: Container(
                height: height*0.09,
                width: width*0.4,
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
                  child: Text('Save',style: TextStyle(
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