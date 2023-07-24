import 'package:bookify/Features/Home/data/Repo/home_repo_impl.dart';
import 'package:bookify/Features/Home/data/data_source/home_local_data_source.dart';
import 'package:bookify/Features/Home/data/data_source/home_remote_data_source.dart';
import 'package:bookify/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(
      homeRemoteDataSource:
          HomeRemoteDataSourceImpl(apiService: getIt.get<ApiService>()),
      homeLocalDataSource: HomeLocalDataSourceImpl()));
}
