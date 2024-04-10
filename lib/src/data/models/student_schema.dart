import 'package:realm/realm.dart';

part 'student_schema.realm.dart';

@RealmModel()
class _StudentSchema {
  @PrimaryKey()
  late Uuid uuid;
  late int? id;
  late String name;
}
