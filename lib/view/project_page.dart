import 'package:exam/service/project_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: GetIt.instance.get<ProjectService>().projects.length,itemBuilder: (context, index) {
        return ListTile(title: GetIt.instance.get<ProjectService>().projects.name,
        subtitle: GetIt.instance.get<ProjectService>().projects.createdBy;
      }),
    );
  }
}