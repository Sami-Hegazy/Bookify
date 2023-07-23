import 'package:bookify/Features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../Repo/home_repo.dart';
import '../../../../core/use_case/no_param_use_case.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookModel>> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookModel>>> call() async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
