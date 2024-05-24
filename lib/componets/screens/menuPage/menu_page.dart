// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:resume_builder_cv/utils/COLORS.DART.dart';
// // import 'package:resume_builder_cv/utils/globle/globle.dart';
// //
// // class menuPage extends StatefulWidget {
// //   const menuPage({super.key});
// //
// //   @override
// //   State<menuPage> createState() => _menuPageState();
// // }
// // GlobalKey<FormState> formKeyM = GlobalKey();
// // TextEditingController txtNameP=TextEditingController();
// //
// //
// // class _menuPageState extends State<menuPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     double height=MediaQuery.of(context).size.height;
// //     double width=MediaQuery.of(context).size.width;
// //     return SafeArea(child: Scaffold(
// //       body: Form(
// //         key: formKeyM,
// //         child: Column(
// //           children: [
// //             SizedBox(
// //               height: height*0.03,
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.all(10.0),
// //               child: Center(
// //                 child: Container(
// //                   height: height*0.08,
// //                   width: width*0.95,
// //                   decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(10),
// //                       gradient: LinearGradient(
// //                           colors: [
// //
// //                             darkColor,
// //                             primaryColor,
// //                             primaryColor,
// //                             primaryColor,
// //
// //                           ]
// //                       )
// //                   ),
// //                   child: Center(
// //                     child: Text('Create Your Profile',style: TextStyle(
// //                         color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
// //                     ),),
// //                   ),
// //
// //                 ),
// //               ),
// //             ),
// //             SizedBox(
// //               height: height*0.04,
// //             ),
// //             Container(
// //               height: height*0.22,
// //               width: width*0.4,
// //               decoration: BoxDecoration(
// //                   color: primaryColor,
// //                   image: DecorationImage(
// //                       fit: BoxFit.cover,
// //                       image: AssetImage(
// //                           'assets/images/user.webp'
// //                       )
// //                   )
// //               ),
// //             ),
// //             //   height: height*0.03,
// //             // ),
// //             Padding(
// //               padding: const EdgeInsets.all(10.0),
// //               child: TextFormField(
// //                 controller: txtNameP,
// //                 onChanged: (value) {
// //                   nameM=value;
// //                 },
// //                 validator: (value) {
// //                   if(value!.isEmpty)
// //                   {
// //                     return 'field must be requried!';
// //                   }
// //                 },
// //                 decoration: InputDecoration(
// //                     labelText: 'Name',
// //                     border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(10),
// //                         borderSide: BorderSide(
// //                           color: primaryColor,
// //                           width: width*0.0050,
// //                         )
// //
// //                     ),
// //                     enabledBorder: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(10),
// //                         borderSide: BorderSide(
// //                           color: primaryColor,
// //                           width: width*0.0050,
// //                         )
// //
// //                     ),
// //                     focusedBorder: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(10),
// //                         borderSide: BorderSide(
// //                           color: primaryColor,
// //                           width: width*0.0060,
// //                         )
// //
// //                     )
// //                 ),
// //               ),
// //             ),
// //             // SizedBox(
// //             //   height: 20,
// //             // ),
// //             // GestureDetector(
// //             //   onTap: () {
// //             //     bool responce=formKeyM.currentState!.validate();
// //             //     if(responce)
// //             //     {
// //             //       nameM=txtNameP.text;
// //             //       Navigator.of(context).pushNamed('/tab');
// //             //     }
// //             //
// //             //   },
// //             //   child: Container(
// //             //     height: height*0.1,
// //             //     width: width*0.45,
// //             //     decoration: BoxDecoration(
// //             //         borderRadius: BorderRadius.circular(10),
// //             //         gradient: LinearGradient(
// //             //             colors: [
// //             //
// //             //               darkColor,
// //             //               primaryColor,
// //             //               primaryColor,
// //             //               primaryColor,
// //             //
// //             //             ]
// //             //         )
// //             //
// //             //     ),
// //             //     child: Center(
// //             //       child: Text('Next',style: TextStyle(
// //             //           color: Colors.white,fontSize: 22
// //             //       ),),
// //             //     ),
// //             //   ),
// //             // )
// //
// //           ],
// //         ),
// //       ),
// //     ));
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:resume_builder_cv/utils/COLORS.DART.dart';
// import 'package:resume_builder_cv/utils/globle/globle.dart';
//
// class menuPagemenuPage extends StatefulWidget {
//   const menuPage({super.key});
//
//   @override
//   State<menuPage> createState() => _menuPageState();
// }
// //GlobalKey<FormState> formKey3= GlobalKey();
//  TextEditingController txtNameP=TextEditingController();
// //
// class _menuPageState extends State<menuPage> {
//   @override
//   Widget build(BuildContext context) {
//     double height=MediaQuery.of(context).size.height;
//     double width=MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//           SizedBox(
//                 height: height*0.03,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Center(
//                   child: Container(
//                     height: height*0.08,
//                     width: width*0.95,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         gradient: LinearGradient(
//                             colors: [
//
//                               darkColor,
//                               primaryColor,
//                               primaryColor,
//                               primaryColor,
//
//                             ]
//                         )
//                     ),
//                     child: Center(
//                       child: Text('Create Your Profile',style: TextStyle(
//                           color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
//                       ),),
//                     ),
//
//                   ),
//                 ),
//               ),
//         SizedBox(
//                 height: height*0.04,
//               ),
//               Container(
//                 height: height*0.22,
//                 width: width*0.4,
//                 decoration: BoxDecoration(
//                     color: primaryColor,
//                     image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage(
//                             'assets/images/user.webp'
//                         )
//                     )
//                 ),
//               ),
//         Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: TextField(
//                   controller: txtNameP,
//                   onChanged: (value) {
//                     nameMenu=value;
//                   },
//                   // validator: (value) {
//                   //   if(value!.isEmpty)
//                   //   {
//                   //     return 'field must be requried!';
//                   //   }
//                   // },
//                   decoration: InputDecoration(
//                       labelText: 'Name',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: primaryColor,
//                             width: width*0.0050,
//                           )
//
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: primaryColor,
//                             width: width*0.0050,
//                           )
//
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                           borderSide: BorderSide(
//                             color: primaryColor,
//                             width: width*0.0060,
//                           )
//
//                       )
//                   ),
//                 ),
//               ),
//             SizedBox(
//               height: 20,
//             ),
//             GestureDetector(
//               onTap: () {
//                 // bool responce=formKeyM.currentState!.validate();
//                 // bool responce=formKeyM.currentState!.validate();
//                 // if(responce)
//                 // {
//                 //   nameMenu=txtNameP.text;
//                 //   Navigator.of(context).pushNamed('/tab');
//                 // }
//                 Navigator.of(context).pushNamed('/tab');
//               },
//               child: Container(
//                 height: height*0.1,
//                 width: width*0.45,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     gradient: LinearGradient(
//                         colors: [
//
//                           darkColor,
//                           primaryColor,
//                           primaryColor,
//                           primaryColor,
//
//                         ]
//                     )
//
//                 ),
//                 child: Center(
//                   child: Text('Next',style: TextStyle(
//                       color: Colors.white,fontSize: 22
//                   ),),
//                 ),
//               ),
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';

class lookPage extends StatefulWidget {
  const lookPage({super.key});

  @override
  State<lookPage> createState() => _lookPageState();
}

class _lookPageState extends State<lookPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
          SizedBox(
                  height: height*0.03,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                      height: height*0.08,
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
                        child: Text('Create Your Profile',style: TextStyle(
                            color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
                        ),),
                      ),

                    ),
                  ),
                ),
          SizedBox(
                  height: height*0.04,
                ),
        Container(
                  height: height*0.22,
                  width: width*0.4,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/user.webp'
                          )
                      )
                  ),
                ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (value) {

                    nameMenu=value;

                },
                decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: width*0.0050,
                              )

                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: width*0.0050,
                              )

                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: primaryColor,
                                width: width*0.0060,
                              )

                          )
                      ),


              ),
            ),
        SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  // bool responce=formKeyM.currentState!.validate();
                  // bool responce=formKeyM.currentState!.validate();
                  // if(responce)
                  // {
                  //   nameMenu=txtNameP.text;
                  //   Navigator.of(context).pushNamed('/tab');
                  // }
                  Navigator.of(context).pushNamed('/tab');
                },
                child: Container(
                  height: height*0.1,
                  width: width*0.45,
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
                    child: Text('Next',style: TextStyle(
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




