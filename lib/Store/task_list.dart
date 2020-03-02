import 'package:mobx/mobx.dart';
import './task.dart';

part 'task_list.g.dart';

enum VisibilityFilter { all, pending, completed }

class TaskList = _TaskList with _$TaskList;

abstract class _TaskList with Store {
  @observable
  ObservableList<Task> Tasks = ObservableList<Task>();

  @observable
  VisibilityFilter filter = VisibilityFilter.all;

  @observable
  String currentDescription = '';

  @action
  void addTask(String taskName) {
    Tasks.add(new Task(taskName));
  }

  @action
  void removeTask(Task task) {
    Tasks.remove(task);
  }
}
