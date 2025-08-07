import 'package:bookly_app/featuers/home_feature/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../featuers/search_feature/data/repos/search_repo_implementation.dart';
import 'api_service.dart';

final getIt = GetIt.instance;
void setUpServiceLocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(getIt.get<ApiService>()));
  getIt.registerSingleton<SearchRepoImplementation>(SearchRepoImplementation(getIt.get<ApiService>()));

}