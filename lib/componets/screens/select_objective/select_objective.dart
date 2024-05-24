import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class select_objectivePage extends StatefulWidget {
  const select_objectivePage({super.key});

  @override
  State<select_objectivePage> createState() => _select_objectivePageState();
}

class _select_objectivePageState extends State<select_objectivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select_objectivePage'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {

              Navigator.of(context).pushNamed('/career');
            },
            child: Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(0,2)
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Identify Strengths and Weaknesses: Understand your skills, interests, and values. Tools like the Myers-Briggs Type Indicator (MBTI) or StrengthsFinder can be useful'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
