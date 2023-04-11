import 'package:clean_arch_dart/app/modules/home/domain/models/dtos/user_dto.dart';
import 'package:clean_arch_dart/app/modules/shared/response/response_presentation.dart';

abstract class AddUserUseCase {
  Future<ResponsePresentation> call(UserDto dto);
}
  