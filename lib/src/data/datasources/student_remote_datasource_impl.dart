import 'package:dio/dio.dart';
import 'package:test_storage/src/domain/entities/student_entity.dart';

import '../models/student_model.dart';
import 'student_datasource.dart';

class StudentRemoteDatasourceImpl implements StudentRemoteDatasource {
  final Dio clientService;

  StudentRemoteDatasourceImpl({required this.clientService});

  @override
  Future<List<StudentModel>> listStudents() async {
    final response = await clientService.get('/student/');
    // ignore: unnecessary_lambdas
    return (response.data as List).map<StudentModel>((e) => StudentModel.fromMap(e)).toList();
  }

  @override
  Future<void> saveStudant(StudantEntity studantEntity) async {
    print('Salvando remoto');
  }
}
