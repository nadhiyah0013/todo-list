import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list/utils/utils.dart';

final categoryProvider = StateProvider.autoDispose<TaskCategories>((ref) {
  return TaskCategories.others;
});
