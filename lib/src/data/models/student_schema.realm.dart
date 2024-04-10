// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class StudentSchema extends _StudentSchema with RealmEntity, RealmObjectBase, RealmObject {
  StudentSchema(
    Uuid uuid,
    String name, {
    int? id,
  }) {
    RealmObjectBase.set(this, 'uuid', uuid);
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
  }

  StudentSchema._();

  @override
  Uuid get uuid => RealmObjectBase.get<Uuid>(this, 'uuid') as Uuid;
  @override
  set uuid(Uuid value) => RealmObjectBase.set(this, 'uuid', value);

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<StudentSchema>> get changes => RealmObjectBase.getChanges<StudentSchema>(this);

  @override
  StudentSchema freeze() => RealmObjectBase.freezeObject<StudentSchema>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'uuid': uuid.toEJson(),
      'id': id.toEJson(),
      'name': name.toEJson(),
    };
  }

  static EJsonValue _toEJson(StudentSchema value) => value.toEJson();
  static StudentSchema _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'uuid': EJsonValue uuid,
        'id': EJsonValue id,
        'name': EJsonValue name,
      } =>
        StudentSchema(
          fromEJson(uuid),
          fromEJson(name),
          id: fromEJson(id),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(StudentSchema._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, StudentSchema, 'StudentRealmModel', [
      SchemaProperty('uuid', RealmPropertyType.uuid, primaryKey: true),
      SchemaProperty('id', RealmPropertyType.int, optional: true),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
