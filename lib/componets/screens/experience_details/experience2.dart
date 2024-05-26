import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';

class experience2Page extends StatefulWidget {
  const experience2Page({super.key});

  @override
  State<experience2Page> createState() => _experience2PageState();
}
GlobalKey<FormState> formEx=GlobalKey();
TextEditingController txtCompany=TextEditingController();
TextEditingController txtPosition=TextEditingController();
TextEditingController txtPeriod=TextEditingController();
TextEditingController txtCity=TextEditingController();
class _experience2PageState extends State<experience2Page> {
  @override
  Widget build(BuildContext context) {



    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(

        title: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Center(
            child: Container(
              height: height*0.4,
              width: width*0.999,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: formEx,
          child: Column(
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
                child: TextFormField(

                  controller: txtCompany,
                  onChanged: (value) {
                    company=value;
                  },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },
          
          
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
                padding: const EdgeInsets.only(right: 250),
                child: Text('Positioin',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: txtPosition,
                  onChanged: (value) {
                    position=value;
                  },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },
          
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
                padding: const EdgeInsets.only(right: 280),
                child: Text('Period',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: txtPeriod,
                  onChanged: (value) {
                    period=value;
                  },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },
          
          
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
                padding: const EdgeInsets.only(right: 300),
                child: Text('City',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: txtCity,
                  onChanged: (value) {
                    city=value;
                  },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },
          
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
                  onTap: () {
                    bool responce=formEx.currentState!.validate();
                    if(responce)
                    {
                      company=txtCompany.text;
                      position=txtPosition.text;
                      period=txtPeriod.text;
                      city=txtCity.text;

                    }
                    company=txtCompany.text;
                    position=txtPosition.text;
                    period=txtPeriod.text;
                    city=txtCity.text;
                    pdfList.add(
                        '${company} ${position} ${period} ${city} ');
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
