import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/use_case/no_param_use_case.dart';
import '../Repo/home_repo.dart';
import '../models/book_model/book_model.dart';

class FetchNewsBooksUseCase extends UseCase<List<BookModel>> {
  final HomeRepo homeRepo;

  FetchNewsBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookModel>>> call() async {
    return await homeRepo.fetchNewestBooks();
  }
}
