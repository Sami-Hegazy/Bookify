import 'package:hive/hive.dart';
import '../../../Features/Home/domain/entities/book_entity.dart';

void cacheBooksDate(List<BookEntity> books, String boxKey) {
  var box = Hive.box(boxKey);
  box.addAll(books);
}
