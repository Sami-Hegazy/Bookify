import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/Repo/home_repo.dart';
import '../../../domain/models/book_model/book_model.dart';
part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksCubitInitial());
  HomeRepo homeRepo;

  Future<void> ferchSimilarBookks({required String category}) async {
    emit(SimilarBooksCubitLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksCubitFailure(failure.errMessage));
    }, (books) {
      emit(SimilarBooksCubitSuccess(books));
    });
  }
}
