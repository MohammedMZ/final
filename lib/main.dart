import 'package:dio/dio.dart';
import 'package:exam/config/service.dart';
import 'package:exam/service/project_service.dart';
import 'package:exam/view/project_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
 runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProjectPage(),
    );
  }
}
