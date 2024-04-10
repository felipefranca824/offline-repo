import '../../connection/i_connection_service.dart';
import '../../domain/entities/student_entity.dart';
import '../../domain/repositories/student_repository.dart';
import '../datasources/student_datasource.dart';
import '../datasources/student_mapper.dart';

class StudentRepositoryImpl implements StudentRepository {
  final StudentLocalDatasource localDatasource;
  final StudentRemoteDatasource remoteDatasource;
  final IConnectionService connectionService;

  StudentRepositoryImpl({
    required this.localDatasource,
    required this.remoteDatasource,
    required this.connectionService,
  });
  @override
  Future<List<StudantEntity>> listStudents() async {
    try {
      final hasConnectivity = await connectionService.hasConnection();
      if (hasConnectivity) {
        final result = await remoteDatasource.listStudents();
        await localDatasource.save(result);
      }

      return await localDatasource.listStudents();
    } on Exception catch (ex) {
      print(ex);
      rethrow;
    }
  }

  @override
  Future<void> saveStudant(StudantEntity studantEntity) async {
    try {
      final hasConnectivity = await connectionService.hasConnection();
      final model = StudentMapper.modelFromEntity(studantEntity);
      if (hasConnectivity) {
        await remoteDatasource.saveStudant(model);
        return;
      }

      await localDatasource.saveStudant(model);
    } on Exception catch (ex) {
      print(ex);
      rethrow;
    }
  }
}
