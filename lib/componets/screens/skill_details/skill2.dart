import 'package:flutter/material.dart';
import 'package:resume_builder_cv/componets/screens/pdf_screen/pdf.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';

class skill2Page extends StatefulWidget {
  const skill2Page({super.key});

  @override
  State<skill2Page> createState() => _skill2PageState();
}
GlobalKey<FormState> formSkills = GlobalKey();
TextEditingController txtSkills=TextEditingController();

class _skill2PageState extends State<skill2Page> {
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
              width: width*0.99,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Form(
          key: formSkills,
          child: Column(
            children:[
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 270,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0,2),
                                color: Colors.grey
                            )
                          ],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('All Add Your Skills',style: TextStyle(
                          fontSize:16,
                          fontWeight: FontWeight.bold
                      ),)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 5),

                    //
                    child: Column(
                      children: [
                        GestureDetector(onTap: () {
                          TextEditingController txtController=TextEditingController();
                          setState(() {
                            txtControllerList.add(txtController);
                          });

                        },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(0,2),
                                    color: Colors.grey
                                )
                              ],
                            ),
                            child: Icon(Icons.add),
                          ),
                        )
                      ],
                    ),

                  ),
                ],
              ),

              ...List.generate(txtControllerList.length, (index) => ListTile(
                title: TextFormField(

                  controller: txtControllerList[index],
                  decoration: InputDecoration(
                    hintText: 'Enter the your choies  Skills',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 2
                        )

                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 2
                        )

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 3
                        )

                    ),


                  ),



                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        TextEditingController txtController=TextEditingController();
                        setState(() {
                          txtControllerList.removeAt(index);
                        });

                      },
                    ),
                  ],
                ),


              )),
                      Center(
                      child: GestureDetector(
                            onTap: () {
                              bool responce = formSkills.currentState!.validate();
                              if (responce) {
                                index++;
                                xyz = txtControllerList[index];


                                //  Navigator.of(context).pushNamed('/sign');
                              }
                            String skills=txtController.text;

                            for(int i=1;i<txtControllerList.length;i++)
                            {
                            skills=skills+ " " +txtControllerList[i].text;
                            }
                            print(skills);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${skills}${txtControllerList.length}',style: TextStyle(
                            color: Colors.white,fontSize: 18
                            ),)));
                            pdfList.add(
                                '${skills} ${skills}');
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

                      )
                      )
            ],

          ),
        ),

      ),

    );
  }
}
TextEditingController  txtController=TextEditingController();
List txtControllerList=[
  txtController,
];
