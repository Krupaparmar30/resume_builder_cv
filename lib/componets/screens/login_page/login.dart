import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}
GlobalKey<FormState>formKey=GlobalKey();
TextEditingController txtEmail=TextEditingController();
TextEditingController txtPass=TextEditingController();


class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
     body: Form(
       key: formKey,
       child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
           children: [
             SizedBox(
               height: height*0.09,
             ),
             Center(
               child: Text('- - - Login Page - - -',style: TextStyle(
                 fontSize: 32,
                 fontWeight: FontWeight.bold,
                 color: Color(0xff1f2aaa)
               ),),
             ),
             SizedBox(
               height: height*0.02,
             ),
             Center(
               child: Text('Welcome Back',style: TextStyle(
                   fontSize: 22,

               ),),
             ),
           SizedBox(
             height: height*0.04,
           ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: TextFormField(

                 onChanged: (value) {
                   setState(() {
                     email=value;
                   });
                 },
                 validator: (value) {

                   if(value!.isEmpty)
                   {
                     return 'field must be requried!';
                   }
                   else if(value.length<=8 )
                   {
                     return 'value should be more than 8';
                   }
                   else if(!value.contains('@email.com'))
                   {
                     return 'field the @email.com';
                   }
                   else if(value.toString()=='email.com')
                   {
                     return 'enter @';
                   }

                 },

                 controller: txtEmail,
               decoration: InputDecoration(
                 labelText: 'Username / Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                    color: Color(0xff1f2aaa),
                        width: width*0.0050,
                  ),

               ),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(
                     color: Color(0xff1f2aaa),
                     width: width*0.0050,
                   ),

                 ),
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(
                     color: Color(0xff1f2aaa),
                     width: width*0.0060,
                   ),

                 ),
             )
             ),
           ),
             SizedBox(
               height: height*0.025,

             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: TextFormField(
                 controller: txtPass,
                   onChanged: (value) {
                   setState(() {
                     pass=value;
                   });
                   },
                   validator: (value) {
                     if(value!.isEmpty)
                       {
                         return'field must be requried!';
                       }
                     else if(value.length<=8)
                       {
                         return  'value should be more than 8';
                       }
                   },
                   decoration: InputDecoration(
                     labelText: 'Password',
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(
                         color: Color(0xff1f2aaa),
                         width: width*0.0050,
                       ),

                     ),
                     enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(
                         color: Color(0xff1f2aaa),
                         width: width*0.0050,
                       ),

                     ),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(
                         color: Color(0xff1f2aaa),
                         width: width*0.0060,
                       ),

                     ),
                   )
               ),
             ),
             Text('Forget Password?',style: TextStyle(color: Colors.black,fontSize: 18),),
             SizedBox(
               height: height*0.025,
             ),
             GestureDetector(
               onTap: () {
                 bool responce=formKey.currentState!.validate();
                 if(responce)
                 {
                   email=txtEmail.text;
                   pass=txtPass.text;
                   Navigator.of(context).pushNamed('/logo');
                 }


               },
               child: Container(
                 height: height*0.08,
                 width: width*0.95,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Color(0xff1f2aaa),
                 ),
                 child: Center(
                   child: Text('Login',style: TextStyle(
                     color: Colors.white,
                     fontSize: 18,
                   ),),
                 ),
               ),
             ),
             SizedBox(
               height: height*0.02,
             ),
           Text.rich(
             TextSpan(
               children: [
                 TextSpan(text: 'Dont have an account? ',style: TextStyle(fontSize: 17),),
                 TextSpan(text: 'Sing in',style: TextStyle(fontSize: 18,color: Colors.blue.shade900),),
               ]
             )
           ),
             SizedBox(
               height: height*0.03,
             ),
             Text('- - - - - - - - - - OR - - - - - - - - - -',style:TextStyle(fontSize: 22),),
             SizedBox(
               height: height*0.03,
             ),
             Container(
               height: height*0.08,
               width: width*0.95,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Color(0xff1f2aaa),
               ),
               child: Center(
                 child: Text('Login with Google',style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                 ),),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: GestureDetector(
                 onTap: () {

                       email=txtEmail.text;
                       pass=txtPass.text;


                   Navigator.of(context).pushNamed('/details');
                 },
                 child: Text('Show details',style: TextStyle(
                   fontSize: 16
                 ),),
               ),
             ),

           ],
         ),
       ),
     ),
    );
  }
}
