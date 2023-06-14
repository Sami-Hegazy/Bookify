import 'package:bookify/Features/Home/data/Repo/home_repo.dart';
import 'package:bookify/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookify/core/errors/failures.dart';
import 'package:bookify/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest');
      List<BookModel> books = [];
      for (var i in data['items']) {
        books.add(BookModel.fromJson(i));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var i in data['items']) {
        books.add(BookModel.fromJson(i));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
