import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';

class project2Page extends StatefulWidget {
  const project2Page({super.key});

  @override
  State<project2Page> createState() => _project2PageState();
}
GlobalKey<FormState> formKeypro=GlobalKey();
TextEditingController txtTitle=TextEditingController();

TextEditingController txtDuration=TextEditingController();
TextEditingController txtRole=TextEditingController();
TextEditingController txtTeam=TextEditingController();
TextEditingController txtExperitise=TextEditingController();




class _project2PageState extends State<project2Page> {
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
                child: Text('Project',style: TextStyle(
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
          key: formKeypro,
          child: Column(
            children: [

              SizedBox(
                height: height*0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 225),
                child: Text('Project Title',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
          controller: txtTitle,
                  onChanged: (value) {
                    proTitle=value;
                  },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Project Title',
                      hintText: 'Jewellery Application',
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
                height:height*0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text('Duration Title',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: txtDuration,
                  onChanged: (value) {
                    proDuration=value;
                  },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },

                  decoration: InputDecoration(
                      labelText: 'Duration',
                      hintText: '14 march 2024',
                      prefixIcon: Icon(Icons.calendar_month),
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
                height: height*0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 280),
                child: Text('Role',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: txtRole,
                  onChanged: (value) {
                    proRole=value;
                  },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },

                  decoration: InputDecoration(
                      labelText: 'Role',
                      hintText: 'Team Leader',
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
                height: height*0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text('Team Size',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: txtTeam,
                  onChanged: (value) {
                    proTeam=value;
                  },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },


                  decoration: InputDecoration(
                      labelText: 'Team Size',
                      hintText: '20',
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
                height: height*0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text('Experitise',style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w800
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: txtExperitise,
          onChanged: (value) {
            proExperitise=value;
          },
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'field must be requried!';
                    }
                  },
          maxLines: 4,
                  decoration: InputDecoration(
                      labelText: 'Expertise',

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
                    bool responce=formKeypro.currentState!.validate();
                    if(responce)
                    {
                      proTitle=txtTitle.text;
                      proDuration=txtDuration.text;
                      proRole=txtRole.text;
                      proTeam=txtTeam.text;
                      proExperitise=txtExperitise.text;

                    }
                    proTitle=txtTitle.text;
                    proDuration=txtDuration.text;
                    proRole=txtRole.text;
                    proTeam=txtTeam.text;
                    proExperitise=txtExperitise.text;
                    pdfList.add(
                        '${proTitle} ${proDuration} ${proRole} ${proTeam} ${proExperitise}');
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
