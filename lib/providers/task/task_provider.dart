import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list/data/data.dart';
import 'package:todo_list/providers/providers.dart';

final taskProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
