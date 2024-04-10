import '../entities/student_entity.dart';

abstract interface class StudentRepository {
  Future<List<StudantEntity>> listStudents();

  Future<void> saveStudant(StudantEntity studantEntity);
}
