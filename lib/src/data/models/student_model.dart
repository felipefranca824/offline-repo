import '../../domain/entities/student_entity.dart';

class StudentModel extends StudantEntity {
  StudentModel({required super.name, required super.id});

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(name: map['name'], id: int.parse(map['id']));
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}
