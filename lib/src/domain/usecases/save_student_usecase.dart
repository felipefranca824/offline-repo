import '../entities/student_entity.dart';
import '../repositories/student_repository.dart';

class SaveStudentUsecase {
  final StudentRepository repository;

  SaveStudentUsecase({required this.repository});
  Future<void> call(StudantEntity studantEntity) async {
    return repository.saveStudant(studantEntity);
  }
}
