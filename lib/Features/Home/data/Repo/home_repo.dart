import 'package:bookify/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookify/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchBestSelllerBooks();
}
