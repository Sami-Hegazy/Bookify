import 'package:bookify/Features/Home/data/data_source/home_local_data_source.dart';
import 'package:bookify/Features/Home/data/data_source/home_remote_data_source.dart';
import 'package:bookify/Features/Home/domain/Repo/home_repo.dart';
import 'package:bookify/Features/Home/domain/entities/book_entity.dart';
import 'package:bookify/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImp(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var cashedBooks = homeLocalDataSource.fetchFeaturedBooks();
      if (cashedBooks.isNotEmpty) {
        return right(cashedBooks);
      }
      var books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var cashedBooks = homeLocalDataSource.fetchNewestBooks();
      if (cashedBooks.isNotEmpty) {
        return right(cashedBooks);
      }
      var books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchSimilarBooks(
      {required String category}) {
    // TODO: implement fetchSimilarBooks
    throw UnimplementedError();
  }

  // @override
  // Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
  //   try {
  //     var data = await apiService.get(
  //         endPoint: 'volumes?Filtering=free-ebooks&q=computer science');
  //     List<BookModel> books = [];
  //     for (var i in data['items']) {
  //       try {
  //         books.add(BookModel.fromJson(i));
  //       } catch (e) {
  //         debugPrint(i);
  //       }
  //     }
  //     return right(books);
  //   } catch (e) {
  //     if (e is DioException) {
  //       return left(ServerFailure.fromDioError(e));
  //     }
  //     return left(ServerFailure(errMessage: e.toString()));
  //   }
  // }

  // @override
  // Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
  //   try {
  //     var data = await apiService.get(
  //         endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
  //     List<BookModel> books = [];
  //     for (var i in data['items']) {
  //       books.add(BookModel.fromJson(i));
  //     }
  //     return right(books);
  //   } catch (e) {
  //     if (e is DioException) {
  //       return left(ServerFailure.fromDioError(e));
  //     }
  //     return left(ServerFailure(errMessage: e.toString()));
  //   }
  // }

  // @override
  // Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
  //     {required String category}) async {
  //   try {
  //     var data = await apiService.get(
  //         endPoint:
  //             'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=relevance');
  //     List<BookModel> books = [];
  //     for (var i in data['items']) {
  //       books.add(BookModel.fromJson(i));
  //     }
  //     return right(books);
  //   } catch (e) {
  //     if (e is DioException) {
  //       return left(ServerFailure.fromDioError(e));
  //     }
  //     return left(ServerFailure(errMessage: e.toString()));
  //   }
  // }
}
