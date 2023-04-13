import 'package:clean_arch_dart/app/modules/shared/response/response_presentation.dart';

abstract class DeleteUserUseCase {
  Future<ResponsePresentation> call(String id) ;
}
  