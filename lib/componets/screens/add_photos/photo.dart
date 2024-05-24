import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';
ImagePicker imagePicker=ImagePicker();
File ?fileImage;


class photoPage extends StatefulWidget {
  const photoPage({super.key});

  @override
  State<photoPage> createState() => _photoPageState();
}

class _photoPageState extends State<photoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child:Container(
                  height: 100,
                  width: 200,
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
              ],
            )

          ],
        ),
      ),
      appBar: AppBar(

        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              height: 80,
              width: 600,
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
                child: Text('Add Photo',style: TextStyle(
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
            height: 30,
          ),
          // Center(
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     decoration: BoxDecoration(
          //       color: primaryColor
          //     ),
          //   ),
          // )
          // ,
          SizedBox(
            height: 30,
          ),
          // Center(
          //   child: GestureDetector(
          //
          //     child: Container(
          //       height: 50,
          //       width: 300,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           // gradient: LinearGradient(
          //           //     colors: [
          //           //       darkColor,
          //           //       primaryColor,
          //           //       primaryColor,
          //           //       primaryColor,
          //           //     ]
          //           // )
          //       ),
          //
          //
          //       child: Center(
          //         child: Text('Update your photo',style: TextStyle(
          //             color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
          //         ),),
          //       ),
          //
          //     ),
          //   ),
          // ),
          CircleAvatar(
            backgroundColor: Colors.pink,
            radius: 80,
            backgroundImage:(fileImage!=null)? FileImage(fileImage!):null,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () async {

                XFile? xfileImage= await imagePicker.pickImage(source: ImageSource.camera);
                setState(() {
                  fileImage=File(xfileImage!.path);
                });

              }, icon: Icon(Icons.camera,size: 40,color: Color(0XFF1b5bb5),)),
              IconButton(onPressed: () async {
                XFile? xfileImage= await imagePicker.pickImage(source: ImageSource.gallery);
                setState(() {
                  fileImage=File(xfileImage!.path);
                });

              }, icon: Icon(Icons.photo,size: 40,color: Color(0XFF1b5bb5),)),
            ],
          ),
        ],
      ),
    );
  }
}
