import '../entities/student_entity.dart';
import '../repositories/student_repository.dart';

class ListStudentsUsecase {
  final StudentRepository repository;

  ListStudentsUsecase({required this.repository});
  Future<List<StudantEntity>> call() async {
    return repository.listStudents();
  }
}
