import 'package:dio/dio.dart';
import 'package:exam/model/project_model.dart';
import 'package:exam/service/project_service.dart';
import 'package:get_it/get_it.dart';

setup() {
  GetIt.instance.registerSingleton<ProjectService>(ProjectService(dio: Dio()));
}