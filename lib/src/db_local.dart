import 'package:realm/realm.dart';
import 'package:test_storage/src/data/models/student_schema.dart';

abstract class DbLocal {
  static Realm realmFactory() {
    return Realm(Configuration.local([StudentSchema.schema]));
  }
}
