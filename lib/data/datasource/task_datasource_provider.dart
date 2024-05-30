import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list/data/datasource/task_datasource.dart';

final taskDatasourceProvider = Provider<TaskDatasource>((ref) {
  return TaskDatasource();
});
