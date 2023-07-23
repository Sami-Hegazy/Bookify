import 'package:bookify/Features/Home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../Repo/home_repo.dart';
import '../../../../core/use_case/no_param_use_case.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
