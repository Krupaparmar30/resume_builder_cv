import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/routes/routes.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:  AppRoutes.routes,
    );;
  }
}
