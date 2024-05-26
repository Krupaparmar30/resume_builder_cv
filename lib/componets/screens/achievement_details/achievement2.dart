import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';

class achievement2Page extends StatefulWidget {
  const achievement2Page({super.key});

  @override
  State<achievement2Page> createState() => _achievement2PageState();
}
GlobalKey<FormState> formKeyAchiv=GlobalKey();

TextEditingController txtAchivName=TextEditingController();
TextEditingController txtAchivYear=TextEditingController();

TextEditingController txtAchivDetails=TextEditingController();


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
      body: Form(
        key: formKeyAchiv,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: height*0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 165),
                child: Text('Achievement Name',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(

                  controller: txtAchivName,
                  onChanged: (value) {
                    achivName=value;
                  },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },


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
                padding: const EdgeInsets.only(right: 150),
                child: Text('Year of Achievement',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(

                  controller: txtAchivYear,
                  onChanged: (value) {
                    achivYear=value;
                  },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },


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
                padding: const EdgeInsets.only(right: 190),
                child: Text('Personal Details',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(

                  controller: txtAchivDetails,
                  onChanged: (value) {
                    achivDetails=value;
                  },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },


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
                  onTap: () {
              bool responce=formKeyAchiv.currentState!.validate();
              if(responce)
              {
              achivName=txtAchivName.text;
              achivYear=txtAchivYear.text;
              achivDetails=txtAchivDetails.text;


              }
              achivName=txtAchivName.text;
              achivYear=txtAchivYear.text;
              achivDetails=txtAchivDetails.text;

              pdfList.add(
                  '${achivName} ${achivYear} ${achivDetails} ');
              },


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
        ),
      ),
    );
  }
}