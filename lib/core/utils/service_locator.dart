import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

/// to use singleton pattern an dependency injection in main file and avoid multiple instances of the same class such as multi bloc provider
/// we can use service locator pattern to register and resolve dependencies
/// in this example we will use get_it package to implement service locator pattern
/// first we need to add get_it package to pubspec.yaml file
/// then we need to register all dependencies in service locator file
/// then we can resolve dependencies in main file
/// let's start by adding get_it package to pubspec.yaml file
/// then we will create service locator file
/// then we will register all dependencies in service locator file

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
