

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';

class education2Page extends StatefulWidget {
  const education2Page({super.key});

  @override
  State<education2Page> createState() => _education2PageState();
}

GlobalKey<FormState> formKeyEdu=GlobalKey();
TextEditingController txtDegree =TextEditingController();
TextEditingController txtSchool=TextEditingController();
TextEditingController txtUniver=TextEditingController();
TextEditingController txtResult=TextEditingController();

class _education2PageState extends State<education2Page> {
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
                child: Text('Education Details',style: TextStyle(
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
                    key: formKeyEdu,
                    child: Column(
                      children: [
                        ...List.generate(ControllerList.length, (index) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                height: height*0.6,
                                width: width*0.9,
                                decoration: BoxDecoration(
                                  color:Colors.blue.shade50,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                              child: Column(
                                children: [
                                  box('Degree',ControllerList[index].txtDegree),
                                  box('School/Univercity',ControllerList[index].txtSchool),
                                  box('Pass Out Date',ControllerList[index].txtUniver),
                                  box('Result',ControllerList[index].txtResult),
                                ],
                              )


                            ),
                          )
                        ],
                      ),

                        ),
                        ),

                        GestureDetector(
                          onTap: () {
                            bool responce=formKeyEdu.currentState!.validate();
                              if(responce)
                              {
                                eduDegree=txtDegree.text;
                                eduSchool=txtSchool.text;
                                eduUniver=txtUniver.text;
                                eduResult=txtResult.text;

                              }
                              eduDegree=txtDegree.text;
                              eduSchool=txtSchool.text;
                              eduUniver=txtUniver.text;
                              eduResult=txtResult.text;

                            pdfList.add(
                                '${eduDegree} ${eduSchool} ${eduUniver} ${eduResult} ');
                              },
                          child: Container(
                            height: height*0.09,
                            width: width*0.4,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      darkColor,
                                      primaryColor,
                                      primaryColor,
                                      primaryColor,
                                    ]
                                ),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Text('Save',style: TextStyle(
                                  color: Colors.white,fontSize: 22
                              )),
                            ),),
                        ),
                        FloatingActionButton( onPressed: () {
                          TextEditingController txtDegree =TextEditingController();
                          TextEditingController txtSchool=TextEditingController();
                          TextEditingController txtUniver=TextEditingController();
                          TextEditingController txtResult=TextEditingController();

                          setState(() {
                            ControllerList.add(ControllerModel(txtDegree: txtDegree));
                            ControllerList.add(ControllerModel(txtSchool: txtSchool));
                            ControllerList.add(ControllerModel(txtUniver: txtUniver));
                            ControllerList.add(ControllerModel(txtResult: txtResult));
                          }
                          );


                        }, child: Icon(Icons.add))
                      ],
                    ),
                  ),
                ),
    );
  }
}
class ControllerModel{
  TextEditingController? txtDegree;
  TextEditingController? txtSchool;
  TextEditingController? txtUniver;
  TextEditingController? txtResult;

  ControllerModel({this.txtDegree,this.txtSchool,this.txtUniver,this.txtResult});
}
List <ControllerModel>ControllerList=[
  ControllerModel(txtDegree: txtDegree,txtSchool: txtSchool,txtUniver: txtUniver,txtResult: txtResult)

];

Column box(String labelText,TextEditingController? controller)
{
  return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(

            // onChanged: (value) {
            //   setState(() {
            //     eduDegree=value;
            //     });
            //
            // },
            validator: (value) {
              if(value!.isEmpty)
              {
                return 'field must be requried!';
              }
            },


            decoration: InputDecoration(
                labelText: labelText,
                hintText: 'Master in Flutter Development',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: primaryColor,
                        width: 1
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: primaryColor,
                        width: 1
                    )
                ),focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: primaryColor,
                    width:2                     )
            )
            ),
          ),
        ),


      ],

  );
}
