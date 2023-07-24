import '../../../Features/Home/domain/entities/book_entity.dart';
import 'package:hive_flutter/adapters.dart';

void cacheBooksDate(List<BookEntity> books, String boxKey) {
  var box = Hive.box(boxKey);
  box.addAll(books);
}
