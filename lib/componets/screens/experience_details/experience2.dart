import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';

class experience2Page extends StatefulWidget {
  const experience2Page({super.key});

  @override
  State<experience2Page> createState() => _experience2PageState();
}

class _experience2PageState extends State<experience2Page> {
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
                child: Text('Exper Details',style: TextStyle(
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
            padding: const EdgeInsets.only(right: 250),
            child: Text('Company',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w800
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(

              decoration: InputDecoration(
                  labelText: 'Company',
                  hintText: 'Ms ',
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
            padding: const EdgeInsets.only(right: 280),
            child: Text('Positioin',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w800
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(

              decoration: InputDecoration(
                  labelText: 'Position',
                  hintText: 'CEO',
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
                      width:  width*0.0050
                  )
              )
              ),
            ),
          ),
          SizedBox(
            height: height*0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text('Period',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w800
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(

              decoration: InputDecoration(
                  labelText: 'Period',
                  hintText: '5 year',
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
            padding: const EdgeInsets.only(right: 320),
            child: Text('City',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w800
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(

              decoration: InputDecoration(
                  labelText: 'City',
                  hintText: 'Bangalore',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: primaryColor,
                          width:  width*0.0050                      )
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
