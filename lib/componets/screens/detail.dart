import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(email.toString()),
        ],
      ),
    );
  }
}
