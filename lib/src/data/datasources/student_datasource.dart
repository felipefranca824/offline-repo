import '../models/student_model.dart';

abstract interface class StudentRemoteDatasource {
  Future<List<StudentModel>> listStudents();

  Future<void> saveStudant(StudentModel studant);
}

abstract interface class StudentLocalDatasource implements StudentRemoteDatasource {
  Future<void> save(List<StudentModel> model);
}
