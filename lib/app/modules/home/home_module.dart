import 'package:clean_arch_dart/app/modules/home/data/repositories/add_user_repository_impl.dart';
import 'package:clean_arch_dart/app/modules/home/data/repositories/get_users_repository_impl.dart';
import 'package:clean_arch_dart/app/modules/home/domain/usecases/add_user_usecase_impl.dart';
import 'package:clean_arch_dart/app/modules/home/domain/usecases/get_users_usecase_impl.dart';
import 'package:clean_arch_dart/app/modules/home/external/datasources/add_user_datasource_impl.dart';
import 'package:clean_arch_dart/app/modules/home/external/datasources/get_users_datasource_impl.dart';
import 'package:clean_arch_dart/app/modules/home/presentation/home/add/add_controller.dart';
import 'package:clean_arch_dart/app/modules/home/presentation/home/add/add_page.dart';
import 'package:clean_arch_dart/app/modules/home/presentation/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/home/home_page.dart ';
 
class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    //DataSource
    $GetUsersDataSourceImpl,
    $AddUserDataSourceImpl,

    //Repositories
    $GetUsersRepositoryImpl,
    $AddUserRepositoryImpl,

    //UserCases
    $GetUsersUseCaseImpl,
    $AddUserUseCaseImpl,

    //Controllers
    $HomeController,
    $AddController,
    
 ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
   ChildRoute('/add', child: (_, args) => const AddPage()),
 ];
}