import 'package:floor/floor.dart';

@Entity(tableName: 'users')
class UserModel {
  @primaryKey
  final String id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
  });
}
