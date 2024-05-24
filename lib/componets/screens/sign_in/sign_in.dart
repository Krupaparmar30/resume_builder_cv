import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';

class signinPage extends StatefulWidget {
  const signinPage({super.key});

  @override
  State<signinPage> createState() => _signinPageState();
}

GlobalKey<FormState> formKey2 = GlobalKey();
TextEditingController txtName = TextEditingController();
TextEditingController txtEmail2 = TextEditingController();
TextEditingController txtPhone = TextEditingController();
TextEditingController txtCpass = TextEditingController();

class _signinPageState extends State<signinPage> {

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: formKey2,
          child: Column(
            children: [
              SizedBox(
                height: height*0.08,
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '- - - Sign up Page - - -',
                  style: TextStyle(fontSize: 32, color: primaryColor),
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: txtName,
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'return field must be requried!';
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0050,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0050,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0060,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: txtEmail2,
                  onChanged: (value) {
                    setState(() {
                      email2 = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'field must be requried!';
                    } else if (value.length <= 8) {
                      return 'value should be more than 8';
                    } else if (!value.contains('@email.com')) {
                      return 'field the @email.com';
                    } else if (value.toString() == 'email.com') {
                      return 'enter @';
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0050,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0050,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0060,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: txtPhone,
                  onChanged: (value) {
                    setState(() {
                      phone = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'field must be requried!';
                    } else if (value.length < 10) {
                      return 'value should be more than 9';
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0050,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0050,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0060,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: txtCpass,
                  onChanged: (value) {
                    setState(() {
                      cpass = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'field must be requried!';
                    } else if (value.length <= 8) {
                      return 'value should be more than 8';
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Conform Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0050,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0050,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: width*0.0060,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height*0.025,
              ),
              GestureDetector(
                onTap: () {
                  bool responce = formKey2.currentState!.validate();
                  if (responce) {
                    email2 = txtEmail2.text;
                    cpass = txtCpass.text;
                    Navigator.of(context).pushNamed('/logo');
                  }
                },
                child: Container(
                  height: height*0.08,
                  width: width*0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height*0.025,
              ),
              Text(
                '- - - - - - - - - - OR - - - - - - - - - -',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                height: height*0.025,
              ),
              Container(
                height: height*0.08,
                width: width*0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primaryColor,
                ),
                child: Center(
                  child: Text(
                    'Sign up  with Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
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
