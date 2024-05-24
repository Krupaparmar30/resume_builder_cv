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
        actions: [
          ElevatedButton(onPressed: () {
            TextEditingController txtDegree =TextEditingController();
            TextEditingController txtSchool=TextEditingController();
            TextEditingController txtUniver=TextEditingController();
            TextEditingController txtResult=TextEditingController();
            // setState(() {
            //   eduDegree = txtDegree.text;
            //   eduSchool=txtSchool.text;
            //   eduUniver = txtUniver.text;
            //   eduResult = txtResult.text;
setState(() {
  ControllerList.add(ControllerModel(txtDegree: txtDegree));
  ControllerList.add(ControllerModel(txtSchool: txtSchool));
  ControllerList.add(ControllerModel(txtUniver: txtUniver));
  ControllerList.add(ControllerModel(txtResult: txtResult));
});


          }, child: Icon(Icons.add))
        ],

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
                                  box('School',ControllerList[index].txtSchool),
                                  box('Univer',ControllerList[index].txtUniver),
                                  box('Result',ControllerList[index].txtResult),
                                ],
                              )


                            ),
                          )
                        ],
                      ),

                        ),
                        ),
                        // SizedBox(
                        //   height: height*0.02,
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 200),
                        //   child: Text('Degree/Course',style: TextStyle(
                        //       fontSize: 18,fontWeight: FontWeight.w800
                        //   ),),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(10.0),
                        //   child: TextFormField(
                        //     controller: txtDegree,
                        //     onChanged: (value) {
                        //       setState(() {
                        //         eduDegree=value;
                        //         });
                        //
                        //     },
                        //     validator: (value) {
                        //       if(value!.isEmpty)
                        //       {
                        //         return 'field must be requried!';
                        //       }
                        //     },
                        //
                        //
                        //     decoration: InputDecoration(
                        //         labelText: 'Degree/Course',
                        //         hintText: 'Master in Flutter Development',
                        //         border: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(10),
                        //             borderSide: BorderSide(
                        //                 color: primaryColor,
                        //                 width:  width*0.0050
                        //             )
                        //         ),
                        //         enabledBorder: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(10),
                        //             borderSide: BorderSide(
                        //                 color: primaryColor,
                        //                 width:  width*0.0050
                        //             )
                        //         ),focusedBorder: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(10),
                        //         borderSide: BorderSide(
                        //             color: primaryColor,
                        //             width:  width*0.0060                              )
                        //     )
                        //     ),
                        //   ),
                        // ),
                        //
                        // SizedBox(
                        //   height: height*0.02,
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 200),
                        //   child: Text('Collage/School',style: TextStyle(
                        //       fontSize: 18,fontWeight: FontWeight.w800
                        //   ),),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(10.0),
                        //   child: TextFormField(
                        //     controller: txtSchool,
                        //     onChanged: (value) {
                        //       eduSchool=value;
                        //     },
                        //     validator: (value) {
                        //       if(value!.isEmpty)
                        //       {
                        //         return 'field must be requried!';
                        //       }
                        //     },
                        //
                        //
                        //     decoration: InputDecoration(
                        //         labelText: 'Course',
                        //         hintText: 'MMaster in flutter devloping ',
                        //         border: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(10),
                        //             borderSide: BorderSide(
                        //                 color: primaryColor,
                        //                 width:  width*0.0050
                        //             )
                        //         ),
                        //         enabledBorder: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(10),
                        //             borderSide: BorderSide(
                        //                 color: primaryColor,
                        //                 width:  width*0.0050
                        //             )
                        //         ),focusedBorder: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(10),
                        //         borderSide: BorderSide(
                        //             color: primaryColor,
                        //             width:  width*0.0060
                        //         )
                        //     )
                        //     ),
                        //   ),
                        // ),
                        //
                        // SizedBox(
                        //   height: height*0.02,
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 200),
                        //   child: Text('Univercity/Borad',style: TextStyle(
                        //       fontSize: 18,fontWeight: FontWeight.w800
                        //   ),),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.all(10.0),
                        //   child: TextFormField(
                        //     controller: txtUniver,
                        //     onChanged: (value) {
                        //       eduUniver=value;
                        //     },
                        //     validator: (value) {
                        //       if(value!.isEmpty)
                        //       {
                        //         return 'field must be requried!';
                        //       }
                        //     },
                        //
                        //
                        //     decoration: InputDecoration(
                        //         labelText: 'Univercity/Borad',
                        //         hintText: 'Gseb',
                        //         border: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(10),
                        //             borderSide: BorderSide(
                        //                 color: primaryColor,
                        //                 width:  width*0.0050
                        //             )
                        //         ),
                        //         enabledBorder: OutlineInputBorder(
                        //             borderRadius: BorderRadius.circular(10),
                        //             borderSide: BorderSide(
                        //                 color: primaryColor,
                        //                 width:  width*0.0050
                        //             )
                        //         ),focusedBorder: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(10),
                        //         borderSide: BorderSide(
                        //             color: primaryColor,
                        //             width:  width*0.0060
                        //         )
                        //     )
                        //     ),
                        //   ),
                        // ),
                        //
                        // SizedBox(
                        //   height: height*0.02,
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 250),
                        //   child: Text('Result',style: TextStyle(
                        //       fontSize: 18,fontWeight: FontWeight.w800
                        //   ),),
                        // ),
                        // SizedBox(
                        //   height: height*0.02,
                        // ),
                        //            Padding(
                        //              padding: const EdgeInsets.all(10.0),
                        //              child: Container(
                        //                                 height: height*0.5,
                        //                                 width: width*0.99,
                        //                                 decoration: BoxDecoration(
                        //                                   color: Colors.white,
                        //                                   borderRadius: BorderRadius.circular(10),
                        //                                   boxShadow: [
                        //                                     BoxShadow(
                        //                                       offset: Offset(0,2),
                        //                                       spreadRadius: 2,
                        //                                       blurRadius: 2,
                        //                                       color: Colors.grey
                        //                                     )
                        //                                   ]
                        //                                 ),
                        //                                 child:SingleChildScrollView(
                        //                                   scrollDirection: Axis.vertical,
                        //                                   child: Column(
                        //                                     children: [
                        //                                       SizedBox(
                        //                                         height: height*0.02,
                        //                                       ),
                        //                                       Padding(
                        //                                         padding: const EdgeInsets.all(10.0),
                        //                                         child: TextFormField(
                        //                                           controller: txtResult,
                        //                                           onChanged: (value) {
                        //                                             eduResult=value;
                        //                                           },
                        //                                           validator: (value) {
                        //                                             if(value!.isEmpty)
                        //                                             {
                        //                                               return 'field must be requried!';
                        //                                             }
                        //                                           },
                        //
                        //
                        //                                           decoration: InputDecoration(
                        //              labelText: 'Univercity/Borad',
                        //              hintText: 'Gseb',
                        //              border: OutlineInputBorder(
                        //                  borderRadius: BorderRadius.circular(10),
                        //                  borderSide: BorderSide(
                        //                      color: primaryColor,
                        //                      width:  width*0.0050
                        //                  )
                        //              ),
                        //              enabledBorder: OutlineInputBorder(
                        //                  borderRadius: BorderRadius.circular(10),
                        //                  borderSide: BorderSide(
                        //                      color: primaryColor,
                        //                      width:  width*0.0050
                        //                  )
                        //              ),focusedBorder: OutlineInputBorder(
                        //              borderRadius: BorderRadius.circular(10),
                        //              borderSide: BorderSide(
                        //                  color: primaryColor,
                        //                  width:  width*0.0060
                        //              )
                        //                                           )
                        //                                           ),
                        //                                         ),
                        //                                       ),
                        //                                       RadioListTile(value: 'pass', groupValue: result, onChanged: (value) {
                        //                                         setState(() {
                        //                                           result=value!;
                        //                                         });
                        //
                        //
                        //                                       },title: Text('Percentage'),),
                        //                                       RadioListTile(value: 'OK', groupValue: result, onChanged: (value) {
                        //                                         setState(() {
                        //                                           result=value!;
                        //                                         });
                        //
                        //
                        //                                       },title: Text('CGPA'),),
                        //                                       SizedBox(
                        //                                         height: 10,
                        //                                       ),
                        //                                       Text('Selecting Year Of the Passing'),
                        //                                       ListTile(
                        //                                         title: Text('Selecting Year Of the Passing'),
                        //
                        //
                        //                                       ),
                        //
                        //
                        //                                     ],
                        //                                   ),
                        //                                 ) ,
                        //
                        //              ),
                        //            ),
                        // SizedBox(
                        //   height: height*0.02,
                        // ),
                        GestureDetector(
                          onTap: () {
                            bool responce=formKeyEdu.currentState!.validate();
                              if(responce)
                              {
                                eduDegree=txtDegree.text;
                                eduSchool=txtSchool.text;
                                eduUniver=txtUniver.text;
                                eduResult=txtResult.text;
                                //  Navigator.of(context).pushNamed('/sign');
                              }
                              eduDegree=txtDegree.text;
                              eduSchool=txtSchool.text;
                              eduUniver=txtUniver.text;
                              eduResult=txtResult.text;
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
                        )
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

Column box2(String labelText,TextEditingController? controller)
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