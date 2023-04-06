import 'package:clean_arch_dart/app/modules/home/data/datasources/get_users_datasource.dart';
import 'package:clean_arch_dart/app/modules/home/data/repositories/get_users_repository_impl.dart';
import 'package:clean_arch_dart/app/modules/home/domain/models/dtos/user_dto.dart';
import 'package:clean_arch_dart/app/modules/home/domain/repositories/get_users_repository.dart';
import 'package:clean_arch_dart/app/modules/home/domain/usecases/get_users_usecase.dart';
import 'package:clean_arch_dart/app/modules/home/domain/usecases/get_users_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'get_users_mock.dart';
import 'get_users_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GetUsersDataSource>()])


void main() {

  late GetUsersDataSource getUsersDataSource;
  late GetUsersRepository getUsersRepositoryImpl;
  late GetUsersUseCase getUsersUseCaseImpl;

  setUp(() {
     getUsersDataSource = MockGetUsersDataSource();
     getUsersRepositoryImpl = GetUsersRepositoryImpl(getUsersDataSource) ;
     getUsersUseCaseImpl = GetUsersUseCaseImpl(getUsersRepositoryImpl);
  });



   //testar se esta fazendo requisiçao
  test('testar se foi requisiçao', () async {
    //quando chamar um metodo o que me retornar -> mock
    //verificar se voltou lista de obj

    when(getUsersDataSource()).thenAnswer((_) async => mock);
    var res = await getUsersUseCaseImpl();

    expect(res.sucess, isTrue);
    expect(res.body, isA<List<UserDto>>());

  });

   //testar se nao foi sucesso na requisiçao

   test('testar se nao foi sucesso na requisiçao', () async {
    //quando chamar um metodo o que me retornar -> mock
    //verificar se voltou lista de obj

    when(getUsersDataSource()).thenThrow(Exception("ERROR"));
    var res = await getUsersUseCaseImpl();

    expect(res.sucess, isFalse);
    expect(res.body, isNull);
    expect(res.message, isA<String>());

  });
  
}