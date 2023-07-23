import 'package:bookify/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookify/Features/Home/domain/entities/book_entity.dart';
import 'package:bookify/core/constants.dart';
import 'package:bookify/core/utils/api_service.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/utils/functions/cache_books.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  ApiService apiService;
  HomeRemoteDataSourceImpl({
    required this.apiService,
  });

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=computer science');

    List<BookEntity> books = getBookList(data);
    cacheBooksDate(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');

    List<BookEntity> books = getBookList(data);

    return books;
  }

  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      try {
        books.add(BookModel.fromJson(bookMap));
      } catch (e) {
        debugPrint(bookMap);
      }
    }
    return books;
  }
}
