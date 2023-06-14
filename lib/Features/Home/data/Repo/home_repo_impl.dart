import 'package:bookify/Features/Home/data/Repo/home_repo.dart';
import 'package:bookify/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookify/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSelllerBooks() {
    // TODO: implement fetchBestSelllerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
