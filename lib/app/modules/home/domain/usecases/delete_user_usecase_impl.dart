import 'package:clean_arch_dart/app/modules/home/domain/repositories/delete_user_repository.dart';
import 'package:clean_arch_dart/app/modules/shared/response/response_presentation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'delete_user_usecase.dart';

final $DeleteUserUseCaseImpl = Bind.singleton(
  (i) => DeleteUserUseCaseImpl(i()),
);
class DeleteUserUseCaseImpl implements DeleteUserUseCase {
  DeleteUserUseCaseImpl(this._deleteUserRepository);

  final DeleteUserRepository _deleteUserRepository;
  @override
  Future<ResponsePresentation> call(String id) async{
    try {
      var res = await _deleteUserRepository(id);
    return ResponsePresentation(sucess: true, body: res);
    } catch (e) {
      return ResponsePresentation(sucess: false, message: e.toString());
    }
  }
}
  