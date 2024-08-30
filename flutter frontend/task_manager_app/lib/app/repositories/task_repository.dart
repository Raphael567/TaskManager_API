import 'package:task_manager_app/app/services/task_service.dart';

import '../models/task.dart';

class TaskRespository {
  final TaskService taskService;

  TaskRespository(this.taskService);

  Future<List<Task>> getAllTasks() async {
    try {
      return await taskService.getAllTasks();
    } catch (e) {
      rethrow;
    }
  }

  Future<Task> createTask(Task task) async {
    try {
      return await taskService.createTask(task);
    } catch(e) {
      rethrow;
    }
  }

  Future<Task> updateTask(String id, Task task) async {
    try {
      return await taskService.updateTask(id, task);
    } catch(e) {
      rethrow;
    }
  }

  Future<void> deleteTask(String id) async {
    try {
      return await taskService.deleteTask(id);
    } catch(e) {
      rethrow;
    }
  }
}