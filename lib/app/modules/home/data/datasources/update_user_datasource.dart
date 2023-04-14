import 'package:clean_arch_dart/app/modules/home/domain/models/dtos/user_dto.dart';

abstract class UpdateUserDataSource {
  Future<Map<String, dynamic>> call(UserDto dto);
}
  