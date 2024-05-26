




import 'package:flutter/material.dart';
import 'package:resume_builder_cv/componets/screens/TabBarPage/TabBar.dart';

import 'package:resume_builder_cv/componets/screens/achievement_details/achievement.dart';
import 'package:resume_builder_cv/componets/screens/achievement_details/achievement2.dart';
import 'package:resume_builder_cv/componets/screens/add_photos/photo.dart';
import 'package:resume_builder_cv/componets/screens/career/career.dart';
import 'package:resume_builder_cv/componets/screens/detail.dart';
import 'package:resume_builder_cv/componets/screens/education_details/education.dart';
import 'package:resume_builder_cv/componets/screens/education_details/education2.dart';
import 'package:resume_builder_cv/componets/screens/experience_details/experience.dart';
import 'package:resume_builder_cv/componets/screens/experience_details/experience2.dart';
import 'package:resume_builder_cv/componets/screens/first_screen/frist_screen.dart';
import 'package:resume_builder_cv/componets/screens/login_page/login.dart';
import 'package:resume_builder_cv/componets/screens/logo/logo.dart';
import 'package:resume_builder_cv/componets/screens/menu2_page/menu2_page.dart';
import 'package:resume_builder_cv/componets/screens/menuPage/menu_page.dart';
import 'package:resume_builder_cv/componets/screens/pdf_screen/pdf.dart';
import 'package:resume_builder_cv/componets/screens/project_details/project.dart';
import 'package:resume_builder_cv/componets/screens/project_details/project2.dart';
import 'package:resume_builder_cv/componets/screens/select_objective/select_objective.dart';
import 'package:resume_builder_cv/componets/screens/sign_in/sign_in.dart';
import 'package:resume_builder_cv/componets/screens/skill_details/skill.dart';
import 'package:resume_builder_cv/componets/screens/skill_details/skill2.dart';
import 'package:resume_builder_cv/componets/screens/spalsh_page/spalsh.dart';

class AppRoutes{
  static Map <String, Widget Function(BuildContext)> routes={

  '/':(context)=>splshPage(),
    '/login':(context) => loginPage(),
     //'/sign':(context)=>signinPage(),
     '/details':(context)=>detailPage(),
     '/logo':(context)=>logoPage(),
      '/first':(context)=>firstPage(),
     '/look':(context)=>lookPage(),
     '/tab':(context)=>TabBarPage(),


    '/menu2':(context)=>menu2Page(),
     '/career':(context)=>careerPage(),
    '/select objective':(context)=>select_objectivePage(),
     '/education':(context)=>educationPage(),
    '/education2':(context)=>education2Page(),
    '/skill':(context)=>skillPage(),
     '/skill2':(context)=>skill2Page(),
    '/project':(context)=>projectPage(),
     '/project2':(context)=>project2Page(),
     '/experience':(context)=>experiencePage(),
     '/experience2':(context)=>experience2Page(),
     '/achievement':(context)=>achievementPage(),
     '/achievement2':(context)=>achievement2Page(),
     '/photos':(context)=>photoPage(),
    '/pdf':(context)=>pdfPage(),
  };
}