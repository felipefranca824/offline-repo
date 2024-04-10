import 'package:realm/realm.dart';
import 'package:test_storage/src/data/models/student_schema.dart';
import 'package:test_storage/src/data/models/student_model.dart';
import 'package:test_storage/src/domain/entities/student_entity.dart';

abstract class StudentMapper {
  static StudentModel modelFromLocalModel(StudentSchema model) {
    return StudentModel(name: model.name, id: model.id ?? 0);
  }

  static StudentModel modelFromEntity(StudantEntity entity) {
    return StudentModel(name: entity.name, id: entity.id);
  }

  static StudentSchema localModelfromModel(StudentModel model) {
    return StudentSchema(Uuid.v4(), model.name, id: model.id);
  }
}
