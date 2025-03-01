import 'package:dio/dio.dart';
import 'package:exam/model/project_model.dart';

class ProjectService {
  Dio dio;
  late Response response;
  String baseUrl = "http://199.192.19.220:3011/api/v1/projects";

  final Map<String, String> headers = {
    "Accept": "*/*",
    "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdHJpZGprbHNhamRrbHNuZyIsImlhdCI6MTc0MDgzMDM1MiwiZXhwIjoxNzQxNDM1MTUyfQ.BzL3Dr-P3lEnhSKMllnERXbqVwlGdsQvJbddiBfhwag"
  };

  List<ProjectModel> projects = [];  

  ProjectService({required this.dio});

  Future<void> getAllData() async {
    try {
      response = await dio.get(
        baseUrl, options: Options(headers: headers),
      );

      projects = response.data.map<ProjectModel>((item) => ProjectModel.fromMap(item)).toList();

      print("Data loaded: ${projects.length}");
    } catch (e) {
      print("Error loading projects: $e");
    }
  }
}

