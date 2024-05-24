import 'package:flutter/material.dart';
import 'package:resume_builder_cv/componets/screens/achievement_details/achievement.dart';
import 'package:resume_builder_cv/componets/screens/add_photos/photo.dart';
import 'package:resume_builder_cv/componets/screens/career/career.dart';
import 'package:resume_builder_cv/componets/screens/education_details/education.dart';
import 'package:resume_builder_cv/componets/screens/experience_details/experience.dart';
import 'package:resume_builder_cv/componets/screens/menu2_page/menu2_page.dart';
import 'package:resume_builder_cv/componets/screens/project_details/project.dart';
import 'package:resume_builder_cv/componets/screens/skill_details/skill.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        bottomNavigationBar: TabBar(
            isScrollable: true,
            tabs: [

              Tab(
                child:  Row(
                  children: [
                    Icon(Icons.person_add_alt,color: primaryColor,),
                    Text('Person',style: TextStyle(
                        color: primaryColor
                    ),),

                  ],
                ),
              ),
              Tab(
                  child: Row(
                    children: [
                      Icon(Icons.back_hand,color: primaryColor,),
                      Text('Career',style: TextStyle(
                          color: primaryColor
                      ),),

                    ],

                  )
              ),
              Tab(
                child:Row(
                  children: [
                    Icon(Icons.history_edu_outlined,color: primaryColor,),
                    Text('Education',style: TextStyle(
                        color: primaryColor
                    ),),

                  ],

                ) ,
              ),

              Tab(
                child:  Row(
                  children: [
                    Icon(Icons.bar_chart,color: primaryColor,),
                    Text('Skills',style: TextStyle(
                        color: primaryColor
                    ),),

                  ],

                ),
              ),
              Tab(
                child:  Row(
                  children: [
                    Icon(Icons.history_edu_outlined,color: primaryColor,),
                    Text('Project',style: TextStyle(
                        color: primaryColor
                    ),),

                  ],

                ),
              ),
              Tab(
                child:  Row(
                  children: [
                    Icon(Icons.work,color: primaryColor,),
                    Text('Experience',style: TextStyle(
                        color: primaryColor
                    ),),

                  ],

                ),
              ),
              Tab(
                child:Row(
                  children: [
                    Icon(Icons.history_edu_outlined,color: primaryColor,),
                    Text('Achievement',style: TextStyle(
                        color: primaryColor
                    ),),

                  ],

                ) ,
              ),
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.photo,color: primaryColor,),
                    Text('Add Photo',style: TextStyle(
                        color: primaryColor
                    ),),

                  ],

                ),
              )

            ]

        ),
        body: TabBarView(
          children: [
           menu2Page(),
          careerPage(),
           educationPage(),
           skillPage(),
           projectPage(),
          experiencePage(),
           achievementPage(),
            photoPage()
          ],
        ),
      ),
    );
  }
}
