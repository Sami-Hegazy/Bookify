import 'package:bookify/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
  Future<Either<Failure, List<BookEntity>>> fetchSimilarBooks(
      {required String category});
}
