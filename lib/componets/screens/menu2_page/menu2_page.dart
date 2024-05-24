import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:resume_builder_cv/utils/COLORS.DART.dart';
import 'package:resume_builder_cv/utils/globle/decoretion_file/decoretion.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';
//import 'package:flutter/src/scheduler/ticker.dart';

class menu2Page extends StatefulWidget {
  const menu2Page({super.key});

  @override
  State<menu2Page> createState() => _menu2PageState();
}
GlobalKey<FormState>formKey4=GlobalKey();
TextEditingController txtPerName=TextEditingController();
TextEditingController txtProfession=TextEditingController();
TextEditingController txtPerDob=TextEditingController();
TextEditingController txtPerAdd=TextEditingController();
TextEditingController txtPerNation=TextEditingController();
TextEditingController txtPerLan=TextEditingController();
TextEditingController txtPerHobby=TextEditingController();
TextEditingController txtPerContact=TextEditingController();
TextEditingController txtPerEmail=TextEditingController();


class _menu2PageState extends State<menu2Page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              DrawerHeader(
                  child: Container(
                    height: height * 0.6,
                    width: width * 0.7,
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
                          BoxShadow(color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0, 1))
                        ]
                    ),
                  )),

              Column(
                children: [
                  GestureDetector(
                    onTap: () {
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/education');
                    },
                    child: ListTile(
                      leading: Icon(Icons.history_edu_outlined),
                      title: Text('Education Details'),

                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/skill');
                    },
                    child: ListTile(
                      leading: Icon(Icons.bar_chart),
                      title: Text('Skills Details'),

                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/project');
                    },
                    child: ListTile(
                      leading: Icon(Icons.bar_chart),
                      title: Text('Project Details'),

                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/experience');
                    },
                    child: ListTile(
                      leading: Icon(Icons.bar_chart),
                      title: Text('Experience Details'),

                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/achievement');
                    },
                    child: ListTile(
                      leading: Icon(Icons.bar_chart),
                      title: Text('Achievement Details'),

                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/photos');
                    },
                    child: ListTile(
                      leading: Icon(Icons.photo),
                      title: Text('Photo Details'),

                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
      appBar: AppBar(

        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              height: height * 0.4,
              width: width * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
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
                child: Text('Personal', style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),),
              ),

            ),
          ),
        ),

      ),



      body:

      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            SizedBox(
              height: height * 0.02,
            ),

            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Text('Name', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: txtPerName,
                onChanged: (value) {
                  setState(() {
                    personalName = value;
                  });
                },
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'field must be requried!';
                //   }
                // },
                decoration: personalNameBox(
                    labelText: 'name', hintText: 'vdvdvf', width: width),
              ),
            ),

            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text('Profession', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: txtProfession,
                onChanged: (value) {
                  setState(() {
                    personalProfession = value;
                  });
                },

                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'field must be requried!';
                //   }
                // },


                decoration:personalNameBox( labelText: 'Profession', hintText: 'Ceo', width: width)
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text('Select Gender', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800
              ),),
            ),

            RadioListTile(value: 'male',
              groupValue: gender,
              onChanged:
                  (value) {
                setState(() {
                  gender = value!;
                });
              },
              activeColor: primaryColor,
              hoverColor: primaryColor,

              title: Text('Male'),),
            RadioListTile(value: 'female',
              groupValue: gender,
              onChanged:
                  (value) {
                setState(() {
                  gender = value!;
                });
              },
              activeColor: primaryColor,
              hoverColor: primaryColor,

              title: Text('Female'),),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text('Date Of Birth', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: txtPerDob,
                onChanged: (value) {
                  setState(() {
                    personalDob = value;
                  });
                },

                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'field must be requried!';
                //   }
                // },


                  decoration:personalNameBox( labelText: 'Date Of Birth', hintText: '30/11/2004', width: width)
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: Text('Married Status', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800
              ),),
            ),

            RadioListTile(value: 'married',
              groupValue: married,
              onChanged:
                  (value) {
                setState(() {
                  married = value!;
                });
              },
              activeColor: primaryColor,
              hoverColor: primaryColor,

              title: Text('Married'),),
            RadioListTile(value: 'unmerried',
              groupValue: married,
              onChanged:
                  (value) {
                setState(() {
                  married = value!;
                });
              },
              activeColor: primaryColor,
              hoverColor: primaryColor,

              title: Text('Unmerried'),),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text('Address', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: txtPerAdd,
                onChanged: (value) {
                  setState(() {
                    personalAdd = value;
                  });
                },

                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'field must be requried!';
                //   }
                // },


                maxLines: 4,


                decoration:personalNameBox( labelText: 'Address', hintText: 'xyx', width: width)
              ),
            ),

            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text('Nationality', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: txtPerNation,
                onChanged: (value) {
                  setState(() {
                    personalNation = value;
                  });
                },

                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'field must be requried!';
                //   }
                // },
                  decoration:personalNameBox( labelText: 'Nationality', hintText: 'indian', width: width)

              ),
            ),


            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Text('Choose Language', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: txtPerLan,
                onChanged: (value) {
                  setState(() {
                    personalLan = value;
                  });
                },
                //
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'field must be requried!';
                //   }
                // },

                  decoration:personalNameBox( labelText: 'English', hintText: 'im krupa', width: width)

              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text('Hobby', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: txtPerHobby,
                onChanged: (value) {
                  setState(() {
                    personalHobby = value;
                  });
                },
                //
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'field must be requried!';
                //   }
                // },

                  decoration:personalNameBox( labelText: 'Drawing', hintText: 'fv', width: width)

              ),
            ),


            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text('Contact', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: txtPerContact,
                onChanged: (value) {
                  setState(() {
                    personalContant = value;
                  });
                },

                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'field must be requried!';
                //   }
                //   else if (value.length >= 9 && value.length < 11) {
                //     return 'value more than 9 and less than 11';
                //   }
                // },
                keyboardType: TextInputType.number,

                  decoration:personalNameBox( labelText: 'Contact', hintText: '995713262545', width: width)

              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text('Email-id', style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w800
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: txtPerEmail,
                onChanged: (value) {
                  setState(() {
                    personalEmail = value;
                  });
                },
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'field must be requried!';
                //   }
                //   else if (value.length <= 8) {
                //     return 'value should be more than 8';
                //   }
                //   else if (!value.contains('@email.com')) {
                //     return 'field the @email.com';
                //   }
                //   else if (value.toString() == 'email.com') {
                //     return 'enter @';
                //   }
                // },


                  decoration:personalNameBox( labelText: 'Email', hintText: 'krupa@email.com', width: width)

              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                 // bool responce = formKey4.currentState!.validate();
                 //  if (responce) {
                 //    personalName = txtPerName.text;
                 //    personalProfession = txtProfession.text;
                 //    personalDob = txtPerDob.text;
                 //    personalAdd = txtPerAdd.text;
                 //    personalNation = txtPerNation.text;
                 //    personalLan = txtPerLan.text;
                 //    personalHobby = txtPerHobby.text;
                 //    personalContant = txtPerContact.text;
                 //    personalEmail = txtPerEmail.text;
                 //
                 //    //  Navigator.of(context).pushNamed('/sign');
                 //  }
                  personalName = txtPerName.text;
                  personalProfession = txtProfession.text;
                  personalDob = txtPerDob.text;
                  personalAdd = txtPerAdd.text;
                  personalNation = txtPerNation.text;
                  personalLan = txtPerLan.text;
                  personalHobby = txtPerHobby.text;
                  personalContant = txtPerContact.text;
                  personalEmail = txtPerEmail.text;
                },
                child: GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    height: height * 0.09,
                    width: width * 0.4,
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
                      child: Text('Save', style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),),
                    ),

                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

