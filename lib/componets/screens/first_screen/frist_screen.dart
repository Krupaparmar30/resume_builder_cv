import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
       
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
               height: height*0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: height*0.09,
                  width: width*0.95,
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
                    child: Text('Resume Maker',style: TextStyle(
                      color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
                    ),),
                  ),

                ),
              ),
              SizedBox(
                height: height*0.03,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/look');
                },
                child: Container(
                  height: height*0.45,
                  width: width*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/c.jpg'
                      )
                    )
                  ),
                ),
              ),
              SizedBox(
                height: height*0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: height*0.22,
                      width: width*0.43,
                      decoration: BoxDecoration(
                        color: primaryColor,
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
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: '⭐\n',style: TextStyle(
                                fontSize: 60
                              )),
                              TextSpan(text: '   Rate',style: TextStyle(
                                  fontSize: 22,color: yellowColor,
                                fontWeight: FontWeight.bold
                              ))
                            ]
                          )
                        )
                      ),
                    ),
                    SizedBox(
                      width: width*0.03,
                    ),
                    Container(
                      height: height*0.22,
                      width: width*0.43,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [

                                darkColor,
                                primaryColor,
                                primaryColor,
                                primaryColor,

                              ]
                          ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                           'assets/images/share2.png'
                          ),
                        )
                      ),


                    )
                 ],
               ),
             )

            ],
          ),
        ),
      ),
    );
  }
}
