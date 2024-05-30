import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list/data/data.dart';
import 'package:todo_list/providers/providers.dart';

class TaskNotifier extends StateNotifier<TaskState> {
  final TaskRepository _repository;
  TaskNotifier(this._repository) : super(const TaskState.initial()) {
    //load all task as soon the app opens an instance of this class is created
    getTasks();
  }

  Future<void> createTask(Task task) async {
    try {
      await _repository.createTask(task);
      getTasks();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> deleteTask(Task task) async {
    try {
      await _repository.deleteTask(task);
      getTasks();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> updateTask(Task task) async {
    try {
      final isCompleted = !task.isCompleted;
      final updatedTask = task.copyWith(isCompleted: isCompleted);
      await _repository.updateTask(updatedTask);
      getTasks();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void getTasks() async {
    try {
      final tasks = await _repository.getAllTasks();
      state = state.copyWith(tasks: tasks);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
