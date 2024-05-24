import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';



class careerPage extends StatefulWidget {
  const careerPage({super.key});

  @override
  State<careerPage> createState() => _careerPageState();
}
GlobalKey<FormState> formKey3=GlobalKey();
TextEditingController txtObjective =TextEditingController();
TextEditingController txtCareer=TextEditingController();
class _careerPageState extends State<careerPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child:Container(
                  height:height*0.6,
                  width: width*0.7,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/cv2.jpg'
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.grey,spreadRadius: 2,blurRadius: 2,offset: Offset(0,1))
                      ]
                  ),
                )),
      GestureDetector(
        onTap: () {

         txtObjective.text;
          Navigator.of(context).pushNamed('/menu2');
        },
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text('Personal Details'),

        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/career');
        },
        child: ListTile(
          leading: Icon(Icons.back_hand),
          title: Text('Career Details'),

        ),
      ),



          ],
        ),
      ),
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
                child: Text('Career',style: TextStyle(
                    color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
                ),),
              ),

            ),
          ),
        ),

      ),

      body: Form(
        key: formKey3,
        child: Column(
          children: [
            SizedBox(
              height: height*0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text('Objective',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w800
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: txtObjective,
                onChanged: (value) {


                  setState(() {
                    obj=value;
                  });
                },
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return 'field must be requried!';
                  }
                },

                maxLines: 4,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(

                    labelText: 'Objective',
                    prefixIcon: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/select objective');

                        },



                        child: Icon(Icons.note_alt)),

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
              padding: const EdgeInsets.only(right: 180),
              child: Text('Career Summary',style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w800
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: txtCareer,
                onChanged: (value) {
                  career=value;
                },
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return 'field must be requried!';
                  }
                },



                maxLines: 4,

                decoration: InputDecoration(


                    labelText: 'Career Summary',

                    prefixIcon: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/select objective');

                        },



                        child: Icon(Icons.note_alt)),


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

            GestureDetector(
              onTap: () {
                bool responce=formKey3.currentState!.validate();
                if(responce)
                {
                  obj=txtObjective.text;
                  career=txtCareer.text;

                  //  Navigator.of(context).pushNamed('/sign');
                }
                obj=txtObjective.text;
                career=txtCareer.text;

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
                  ),),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
