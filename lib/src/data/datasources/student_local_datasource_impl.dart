import 'package:realm/realm.dart';
import 'package:test_storage/src/data/datasources/student_mapper.dart';

import '../models/student_schema.dart';
import '../models/student_model.dart';
import 'student_datasource.dart';

class StudentLocalDatasourceImpl implements StudentLocalDatasource {
  final Realm realm;

  StudentLocalDatasourceImpl({required this.realm});

  @override
  Future<List<StudentModel>> listStudents() async {
    final results = realm.all<StudentSchema>();
    return results.map(StudentMapper.modelFromLocalModel).toList();
  }

  @override
  Future<void> save(List<StudentModel> model) async {
    realm.write(() {
      realm.addAll(model.map(StudentMapper.localModelfromModel));
    });
  }

  @override
  Future<void> saveStudant(StudentModel studant) async {
    realm.write(() {
      final schema = StudentMapper.localModelfromModel(studant);
      schema.uuid = Uuid.v4();
      realm.add(schema);
    });
  }
}
